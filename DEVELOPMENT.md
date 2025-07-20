# Development Setup

This is a Laravel 9 project with Vue.js 3 frontend using Inertia.js.

## Prerequisites

- PHP 8.0 or higher
- Composer
- Node.js 16 or higher
- npm or yarn

## Quick Start

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd PFE--2
   ```

2. **Run the development script**
   ```bash
   ./dev.sh
   ```

   This script will:
   - Install PHP and Node.js dependencies
   - Set up the SQLite database
   - Run migrations
   - Start both Laravel and Vite development servers

## Manual Setup

If you prefer to set up manually:

1. **Install dependencies**
   ```bash
   composer install
   npm install
   ```

2. **Environment setup**
   ```bash
   cp .env.example .env
   php artisan key:generate
   ```

3. **Database setup**
   ```bash
   touch database/database.sqlite
   php artisan migrate
   php artisan db:seed
   ```

4. **Storage setup**
   ```bash
   php artisan storage:link
   ```

5. **Start development servers**
   ```bash
   # Terminal 1: Start Vite development server
   npm run dev
   
   # Terminal 2: Start Laravel development server
   cd public && php -S localhost:8000
   ```

## Access Points

- **Laravel Application**: http://localhost:8000
- **Vite Development Server**: http://localhost:5173

## Database

The project is configured to use SQLite for development. The database file is located at `database/database.sqlite`.

## Features

- Laravel 9 backend
- Vue.js 3 frontend with Inertia.js
- Tailwind CSS for styling
- Course management system
- User authentication
- File uploads
- Notifications system

## Development Tools

- Laravel Debugbar (development only)
- Laravel IDE Helper
- ESLint for JavaScript linting
- Laravel Pint for PHP code styling

## Useful Commands

```bash
# Run tests
php artisan test

# Clear caches
php artisan cache:clear
php artisan config:clear
php artisan route:clear
php artisan view:clear

# Generate IDE helper files
php artisan ide-helper:generate
php artisan ide-helper:meta

# Format code
./vendor/bin/pint
npm run fix:eslint
``` 