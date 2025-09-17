# TourAndTravel - Tour and Travel Management System

A comprehensive tour and travel management system built with Java EE, featuring user registration, tour booking, enquiry management, and admin panel functionality.

## 🚀 Features

### User Features
- **User Registration & Authentication** - Secure user registration and login system
- **Tour Browsing** - Browse available tour packages with detailed information
- **Tour Booking** - Book tours with personal details and preferences
- **Enquiry System** - Submit enquiries for tour information
- **Issue Reporting** - Report issues and get support
- **Profile Management** - Manage personal information and booking history

### Admin Features
- **Dashboard** - Comprehensive admin dashboard with statistics
- **Tour Management** - Create, update, and manage tour packages
- **User Management** - Manage user accounts and permissions
- **Booking Management** - Handle tour bookings and confirmations
- **Enquiry Management** - Respond to customer enquiries
- **Issue Management** - Track and resolve customer issues
- **Content Management** - Manage website content and images

## 🛠️ Technology Stack

- **Backend**: Java 11, Java EE (Servlets, JSP)
- **Database**: PostgreSQL
- **Build Tool**: Maven
- **Frontend**: JSP, HTML, CSS, JavaScript, Bootstrap
- **Deployment**: Docker, webapp-runner
- **Email**: JavaMail API
- **File Upload**: Apache Commons FileUpload

## 📋 Prerequisites

### For Local Development
- **Java 11** or higher
- **Maven 3.6+**
- **PostgreSQL 12+**
- **Git**

### For Docker Deployment
- **Docker** 20.10+
- **Docker Compose** 1.29+

## 🚀 Quick Start with Docker (Recommended)

The easiest way to run the application is using Docker Compose:

```bash
# Clone the repository
git clone https://github.com/amolsr/TourAndTravel.git
cd TourAndTravel

# Build and run the application
docker-compose up --build

# Access the application
# Main Application: http://localhost:8080
# Admin Panel: http://localhost:8080/Admin/Login
```

## 🏗️ Local Development Setup

### 1. Clone the Repository
```bash
git clone https://github.com/amolsr/TourAndTravel.git
cd TourAndTravel
```

### 2. Database Setup

#### Install PostgreSQL
```bash
# Ubuntu/Debian
sudo apt update
sudo apt install postgresql postgresql-contrib

# macOS (using Homebrew)
brew install postgresql
brew services start postgresql

# Windows
# Download and install from https://www.postgresql.org/download/windows/
```

#### Create Database and User
```sql
-- Connect to PostgreSQL as superuser
sudo -u postgres psql

-- Create database
CREATE DATABASE tourdb;

-- Create user
CREATE USER touruser WITH PASSWORD 'your_password';

-- Grant privileges
GRANT ALL PRIVILEGES ON DATABASE tourdb TO touruser;

-- Exit PostgreSQL
\q
```

### 3. Environment Configuration

Create a `.env` file in the project root:
```bash
# Database Configuration
DATABASE_HOST=jdbc:postgresql://localhost:5432/tourdb
DBUSER=touruser
DBPASS=your_password

# Email Configuration (Optional)
MAIL_HOST=smtp.gmail.com
MAIL_PORT=587
MAIL_USERNAME=your_email@gmail.com
MAIL_PASSWORD=your_app_password
```

### 4. Build and Run

#### Using Maven
```bash
# Clean and compile
mvn clean compile

# Package the application
mvn package

# Run with Maven (requires servlet container)
mvn tomcat7:run
```

#### Using webapp-runner (Recommended)
```bash
# Build the project
mvn clean package

# Run with webapp-runner
java -jar target/dependency/webapp-runner.jar --port 8080 target/*.war
```

#### Using IDE (Eclipse/IntelliJ)
1. Import the project as a Maven project
2. Configure the database connection in `src/com/tnt/dao/DBManager.java`
3. Deploy to a servlet container (Tomcat, Jetty, etc.)
4. Set environment variables for database connection

### 5. Database Initialization

The application will automatically create the required tables on first run. The database schema includes:

- **Users** - User accounts and profiles
- **Admin** - Administrator accounts
- **Tour** - Tour packages and details
- **Booking** - Tour bookings and reservations
- **Enquiry** - Customer enquiries
- **Issues** - Support tickets and issues

## 🌐 Access Points

### Application URLs
- **Home Page**: http://localhost:8080/
- **User Registration**: http://localhost:8080/Register
- **User Login**: http://localhost:8080/Login
- **Admin Login**: http://localhost:8080/Admin/Login
- **Admin Dashboard**: http://localhost:8080/Admin/DashBoard

### Default Credentials
You'll need to create accounts through the registration process or directly in the database.

## 📁 Project Structure

```
TourAndTravel/
├── src/com/tnt/
│   ├── cont/          # Controllers (Servlets)
│   ├── dao/           # Data Access Objects
│   ├── model/         # Data Models
│   └── util/          # Utility Classes
├── WebContent/
│   ├── Admin/         # Admin panel JSP pages
│   ├── css/           # Stylesheets
│   ├── js/            # JavaScript files
│   ├── img/           # Images and assets
│   └── WEB-INF/       # Web configuration
├── docker-compose.yml # Docker Compose configuration
├── Dockerfile         # Docker build configuration
├── pom.xml           # Maven configuration
└── README.md         # This file
```

## 🔧 Configuration

### Database Configuration
Update the database connection in `src/com/tnt/dao/DBManager.java`:

```java
con = DriverManager.getConnection(
    System.getenv("DATABASE_HOST"), 
    System.getenv("DBUSER"), 
    System.getenv("DBPASS")
);
```

### Email Configuration
Configure email settings in `src/com/tnt/cont/ContactUs.java` for enquiry notifications.

### File Upload Configuration
File upload settings are configured in the servlet classes for tour image uploads.

## 🐳 Docker Commands

```bash
# Build and start services
docker-compose up --build

# Start in background
docker-compose up -d

# View logs
docker-compose logs -f app

# Stop services
docker-compose down

# Stop and remove volumes (WARNING: Deletes data)
docker-compose down -v

# Rebuild specific service
docker-compose up --build app
```

## 🧪 Testing

### Manual Testing
1. **User Registration**: Test user account creation
2. **Tour Browsing**: Verify tour package display
3. **Booking Process**: Test complete booking workflow
4. **Admin Functions**: Test admin panel features
5. **Database Operations**: Verify data persistence

### Database Testing
```bash
# Connect to database
docker-compose exec postgres psql -U postgres -d tourdb

# View tables
\dt

# Check data
SELECT * FROM Users;
SELECT * FROM Tour;
```

## 🚨 Troubleshooting

### Common Issues

1. **Database Connection Failed**
   - Verify PostgreSQL is running
   - Check database credentials
   - Ensure database exists

2. **Port Already in Use**
   - Change port in docker-compose.yml
   - Kill existing processes on ports 8080/5432

3. **Build Failures**
   - Check Java version (requires Java 11+)
   - Verify Maven dependencies
   - Clean and rebuild: `mvn clean package`

4. **Servlet Container Issues**
   - Ensure proper servlet container configuration
   - Check web.xml configuration
   - Verify JSP compilation

### Logs and Debugging
```bash
# Application logs
docker-compose logs app

# Database logs
docker-compose logs postgres

# Maven debug
mvn clean package -X
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📝 Development Notes

### Code Quality Issues
This project has several identified issues that need attention:
- SQL syntax errors in DAO classes
- Inconsistent error handling
- Missing null checks
- TODO comments in production code

See the [Issues](https://github.com/amolsr/TourAndTravel/issues) page for detailed bug reports and fixes.

### Future Improvements
- Implement proper logging framework
- Add unit tests
- Improve error handling
- Add input validation
- Implement security enhancements

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Amol Saini**
- GitHub: [@amolsr](https://github.com/amolsr)

## 🙏 Acknowledgments

- Bootstrap for UI components
- PostgreSQL for database
- Maven for build management
- Java EE community for best practices

---

**Note**: This is a Java EE web application. Make sure you have the proper servlet container (Tomcat, Jetty, etc.) configured for local development, or use the provided Docker setup for the easiest deployment experience.