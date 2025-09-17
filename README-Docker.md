# Tour and Travel Management System - Docker Setup

This project can be run using Docker Compose, which will set up both the application and PostgreSQL database.

## Prerequisites

- Docker
- Docker Compose

## Quick Start

1. **Build and run the application:**
   ```bash
   docker-compose up --build
   ```

2. **Access the application:**
   - Main Application: http://localhost:8080
   - Admin Panel: http://localhost:8080/Admin/Login

3. **Stop the application:**
   ```bash
   docker-compose down
   ```

## Services

### PostgreSQL Database
- **Container:** `tourdb`
- **Port:** 5432
- **Database:** `tourdb`
- **Username:** `postgres`
- **Password:** `password`

### Tour and Travel Application
- **Container:** `tour-app`
- **Port:** 8080
- **Technology:** Java 17 + Maven + webapp-runner

## Environment Variables

The application uses the following environment variables:
- `DATABASE_HOST`: Database connection URL
- `DBUSER`: Database username
- `DBPASS`: Database password

## Database Schema

The application automatically creates the following tables on startup:
- `Users` - User accounts
- `Admin` - Admin accounts
- `Tour` - Tour packages
- `Booking` - Tour bookings
- `Enquiry` - Customer enquiries
- `Issues` - Support issues

## Development

### Rebuilding the Application
```bash
docker-compose up --build
```

### Viewing Logs
```bash
docker-compose logs -f app
```

### Accessing the Database
```bash
docker-compose exec postgres psql -U postgres -d tourdb
```

### Stopping and Cleaning Up
```bash
# Stop services
docker-compose down

# Stop and remove volumes (WARNING: This will delete all data)
docker-compose down -v
```

## Troubleshooting

1. **Port conflicts:** Make sure ports 8080 and 5432 are not in use
2. **Database connection issues:** Wait for the database to be ready before the app starts
3. **Build failures:** Check that all source files are present and Maven dependencies are available

## Default Admin Account

You may need to create an admin account manually through the database or by registering through the application interface.
