# 🎓 NAJA7I - Online Learning Platform

<div align="center">

![NAJA7I Logo](https://img.shields.io/badge/NAJA7I-Online%20Learning%20Platform-blue?style=for-the-badge&logo=laravel)
![Laravel](https://img.shields.io/badge/Laravel-9.x-red?style=for-the-badge&logo=laravel)
![Vue.js](https://img.shields.io/badge/Vue.js-3.x-green?style=for-the-badge&logo=vue.js)
![Tailwind CSS](https://img.shields.io/badge/Tailwind%20CSS-3.x-38B2AC?style=for-the-badge&logo=tailwind-css)

**Final Year Project - École Supérieure de Technologie Essaouira**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)
[![PHP](https://img.shields.io/badge/PHP-8.0+-777BB4?style=for-the-badge&logo=php)](https://php.net)
[![Node.js](https://img.shields.io/badge/Node.js-16+-339933?style=for-the-badge&logo=node.js)](https://nodejs.org)

</div>

---

## 📖 About NAJA7I

**NAJA7I** is a comprehensive online learning platform designed to make high-quality education accessible to everyone. Built by two ambitious students from École Supérieure de Technologie Essaouira, this platform connects learners with Morocco's best teachers through engaging online courses.

### 🎯 Mission
Our mission is to democratize education by providing access to expert-led courses regardless of location or financial situation. We believe everyone deserves the opportunity to learn and grow.

### 🌟 Key Features
- **Wide Range of Courses** - Over 100 courses covering various subjects
- **Expert Instructors** - Experienced teachers from across Morocco
- **Interactive Learning** - Engaging video content and materials
- **Affordable Pricing** - Competitive prices with flexible payment options
- **Real-time Notifications** - Stay updated with course offers and updates
- **Responsive Design** - Works seamlessly on all devices

---

## 🛠️ Technology Stack

### Backend
- **Laravel 9** - PHP web application framework
- **SQLite** - Lightweight database for development
- **Laravel Sanctum** - API authentication
- **Inertia.js** - Modern monolith approach

### Frontend
- **Vue.js 3** - Progressive JavaScript framework
- **Tailwind CSS** - Utility-first CSS framework
- **Vite** - Fast build tool and dev server
- **Inertia.js** - Seamless SPA experience

### Development Tools
- **Laravel Debugbar** - Development debugging
- **Laravel IDE Helper** - Enhanced IDE support
- **ESLint** - JavaScript code linting
- **Laravel Pint** - PHP code formatting

---

## 🚀 Quick Start

### Prerequisites
- PHP 8.0 or higher
- Composer
- Node.js 16 or higher
- npm or yarn

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/NAJA7I.git
   cd NAJA7I
   ```

2. **Run the development script (Recommended)**
   ```bash
   chmod +x dev.sh
   ./dev.sh
   ```

3. **Manual Setup (Alternative)**
   ```bash
   # Install dependencies
   composer install
   npm install
   
   # Environment setup
   cp .env.example .env
   php artisan key:generate
   
   # Database setup
   touch database/database.sqlite
   php artisan migrate
   php artisan db:seed
   
   # Storage setup
   php artisan storage:link
   
   # Start development servers
   npm run dev
   cd public && php -S localhost:8000
   ```

### Access Points
- **Main Application**: http://localhost:8000
- **Vite Dev Server**: http://localhost:5173

---

## 📱 Features Overview

### 👥 User Features
- **User Registration & Authentication**
- **Course Browsing & Search**
- **Course Details & Previews**
- **Make Offers on Courses**
- **Real-time Notifications**
- **User Profile Management**

### 👨‍🏫 Teacher Features
- **Course Creation & Management**
- **Image & Video Upload**
- **Offer Management**
- **Dashboard Analytics**
- **Content Management**

### 🎨 UI/UX Features
- **Responsive Design** - Mobile-first approach
- **Dark Mode Toggle** - Built-in theme switching
- **Modern Navigation** - Clean, intuitive interface
- **Interactive Elements** - Smooth animations and transitions
- **Professional Styling** - Modern design with Tailwind CSS

---

## 📁 Project Structure

```
NAJA7I/
├── app/
│   ├── Http/Controllers/    # Laravel controllers
│   ├── Models/             # Eloquent models
│   └── Notifications/      # Notification classes
├── resources/
│   └── js/
│       ├── Pages/          # Vue.js page components
│       ├── Layouts/        # Layout components
│       └── Components/     # Reusable components
├── database/
│   ├── migrations/         # Database migrations
│   └── seeders/           # Database seeders
├── routes/                # Application routes
└── public/               # Public assets
```

---

## 🎓 Course Categories

Our platform offers courses in various subjects including:
- **Mathematics** - Advanced mathematical concepts
- **Physics & Chemistry** - Scientific principles and applications
- **Life & Earth Sciences** - Biological and environmental sciences
- **Philosophy** - Critical thinking and logic
- **English** - Language learning and communication

---

## 👨‍💻 Development Team

<div align="center">

**Final Year Project - École Supérieure de Technologie Essaouira**

| Developer | Role | Contact |
|-----------|------|---------|
| **@yubiethesavage** | Full-Stack Developer | [GitHub](https://github.com/yubiethesavage) |
| **@sel-jett** | Full-Stack Developer | [GitHub](https://github.com/sel-jett) |

</div>

---

## 🔧 Development Commands

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

# Database operations
php artisan migrate
php artisan db:seed
php artisan migrate:fresh --seed
```

---

## 📊 Database Schema

The application includes the following main entities:
- **Users** - User accounts and authentication
- **Courses** - Course information and metadata
- **Course Images** - Course visual content
- **Course Videos** - Course video content
- **Offers** - Course purchase offers
- **Notifications** - User notification system

---

## 🌐 Deployment

### Production Requirements
- PHP 8.0+
- MySQL/PostgreSQL database
- Web server (Apache/Nginx)
- SSL certificate
- File storage (AWS S3 recommended)

### Environment Variables
```env
APP_NAME=NAJA7I
APP_ENV=production
APP_DEBUG=false
APP_URL=https://your-domain.com

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=naja7i_production
DB_USERNAME=your_username
DB_PASSWORD=your_password
```

---

## 🤝 Contributing

We welcome contributions! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

### Contributing Guidelines
1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgments

- **École Supérieure de Technologie Essaouira** - For providing the educational foundation
- **Laravel Community** - For the amazing framework
- **Vue.js Team** - For the progressive JavaScript framework
- **Tailwind CSS** - For the utility-first CSS framework
- **All Contributors** - For their valuable contributions

---

## 📞 Contact

- **Project Link**: [https://github.com/yourusername/NAJA7I](https://github.com/yourusername/NAJA7I)
- **Institution**: École Supérieure de Technologie Essaouira
- **Email**: [your-email@example.com](mailto:your-email@example.com)

---

<div align="center">

**Made with ❤️ by @yubiethesavage & @sel-jett**

*Empowering education through technology*

</div>
