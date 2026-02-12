# Free Doc

A comprehensive Ruby on Rails medical appointment management system that connects patients with doctors. Streamline scheduling, manage patient records, and organize medical consultations efficiently.

## Features

- **Doctor Management**: Register doctors with their specialties and locations
- **Patient Profiles**: Manage patient information and medical history
- **Appointments**: Schedule and track medical appointments
- **Specialties**: Organize doctors by their medical specialties
- **Multi-Location Support**: Support doctors and patients across different cities
- **Doctor-Specialty Relationships**: Track which doctors offer which medical services

## Technology Stack

- **Ruby**: 3.x
- **Rails**: 7.x
- **Database**: SQLite3 (development), PostgreSQL (production-ready)
- **Frontend**: ERB templates, CSS, JavaScript

## Setup Instructions

### Prerequisites

- Ruby 3.0 or higher
- Rails 7.0 or higher
- SQLite3 or PostgreSQL
- Bundler

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd Free_doc
```

2. Install dependencies:
```bash
bundle install
```

3. Setup the database:
```bash
rails db:create
rails db:migrate
rails db:seed
```

4. Start the development server:
```bash
rails server
```

The application will be available at `http://localhost:3000`

## Project Structure

```
app/
├── models/           # Doctor, Patient, Appointment, Specialty, etc.
├── controllers/      # Application logic for handling requests
├── views/           # ERB templates for UI
├── helpers/         # Helper methods for views
├── assets/          # Stylesheets and images
└── javascript/      # JavaScript components

config/
├── routes.rb        # Application routes
├── database.yml     # Database configuration
└── environments/    # Environment-specific settings

db/
├── migrate/         # Database migrations
└── seeds.rb         # Seed data for development
```

## Models

- **Doctor**: Medical professionals with locations and specialties
- **Patient**: Users seeking medical services
- **Appointment**: Scheduled consultations between doctors and patients
- **Specialty**: Medical specialties (Cardiology, Dermatology, etc.)
- **DoctorSpecialty**: Join table linking doctors to their specialties
- **City**: Location information for doctors and patients

## Database Commands

Create database:
```bash
rails db:create
```

Run migrations:
```bash
rails db:migrate
```

Seed sample data:
```bash
rails db:seed
```

Reset database:
```bash
rails db:reset
```

## Testing

To run the test suite:
```bash
rails test
```

## Development

To open the Rails console:
```bash
rails console
```

To generate a new migration:
```bash
rails generate migration MigrationName
```

## API Usage

The application provides RESTful endpoints for managing doctors, patients, and appointments.

### Examples:
- `GET /doctors` - List all doctors
- `POST /doctors` - Create a new doctor
- `GET /patients` - List all patients
- `POST /appointments` - Schedule new appointment
- `GET /appointments` - List appointments

## Deployment

The application is configured for Docker deployment. Use the provided `Dockerfile` for containerization.

## Contributing

1. Create a new branch for your feature
2. Make your changes
3. Write or update tests
4. Submit a pull request

## License

This project is part of The Hacking Project curriculum.

## Support

For issues or questions, please refer to the project documentation or contact the development team.
