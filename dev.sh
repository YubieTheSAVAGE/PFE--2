#!/bin/bash

echo "🚀 Starting Laravel development environment..."

# Check if .env file exists
if [ ! -f .env ]; then
    echo "❌ .env file not found. Please run: cp .env.example .env"
    exit 1
fi

# Check if database exists
if [ ! -f database/database.sqlite ]; then
    echo "📝 Creating SQLite database..."
    touch database/database.sqlite
fi

# Install dependencies if needed
if [ ! -d vendor ]; then
    echo "📦 Installing PHP dependencies..."
    composer install
fi

if [ ! -d node_modules ]; then
    echo "📦 Installing Node.js dependencies..."
    npm install
fi

# Generate application key if not set
if ! grep -q "APP_KEY=base64:" .env; then
    echo "🔑 Generating application key..."
    php artisan key:generate
fi

# Run migrations
echo "🗄️  Running database migrations..."
php artisan migrate --force

# Create storage link if it doesn't exist
if [ ! -L public/storage ]; then
    echo "🔗 Creating storage link..."
    php artisan storage:link
fi

# Start Vite development server in background
echo "⚡ Starting Vite development server..."
npm run dev &
VITE_PID=$!

# Start Laravel development server in background
echo "🌐 Starting Laravel development server..."
cd public && php -S localhost:8000 &
LARAVEL_PID=$!

echo ""
echo "✅ Development environment started!"
echo "📱 Laravel server: http://localhost:8000"
echo "⚡ Vite server: http://localhost:5173"
echo ""
echo "Press Ctrl+C to stop both servers"

# Function to cleanup on exit
cleanup() {
    echo ""
    echo "🛑 Stopping servers..."
    kill $VITE_PID 2>/dev/null
    kill $LARAVEL_PID 2>/dev/null
    exit 0
}

# Set up signal handlers
trap cleanup SIGINT SIGTERM

# Wait for both processes
wait 