# Dockerized Promptopia

This project is a Dockerized version of [Promptopia](https://github.com/Khemu1), a web application designed and developed by [Khemu1](https://github.com/Khemu1). The Dockerization and deployment on AWS EC2 were handled by [omartamer630](https://github.com/omartamer630).

## Table of Contents

- [About the Project](#about-the-project)
- [Getting Started](#getting-started)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Dockerization](#dockerization)
- [Deployment](#deployment)
- [Contributing](#contributing)
- [License](#license)
- [Acknowledgements](#acknowledgements)

## About the Project

Promptopia is a web application that offers [describe the application's purpose and features briefly]. This Dockerized version simplifies the setup and deployment process, allowing the application to run in isolated containers.

## Getting Started

These instructions will guide you on how to get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- Docker installed on your machine.
- Docker Compose installed.
- AWS account with access to EC2.
- Basic knowledge of Docker, Docker Compose, and AWS EC2.

### Installation

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/omartamer630/dockerized-promptopia.git
   cd dockerized-promptopia
   
### Dockerization

# This project has been dockerized to simplify the development and deployment process.
# Docker allows the application to run in isolated containers, ensuring consistency
# across different environments.

# To build the Docker image, use the following command
```bash
docker compose -f docker-compose.yml -f docker-compose.dev.yml up -d --build || docker compose -f docker-compose.yml -f docker-compose.prod.yml up -d --build
```

# The application will be accessible at
```bash
http://localhost:3000
``` 
or 
```bash
http://ec2-44-204-168-247.compute-1.amazonaws.com:3000 for browser search
``` 
.

### Deployment

# The application is deployed using AWS EC2. The Docker container is hosted
# on an EC2 instance, which allows it to be accessed remotely.

# The application will be accessible via the EC2 instance's public IP or domain.

```bash
docker compose -f docker-compose.yml -f docker-compose.prod.yml up -d
```

### Contributing

# Contributions are welcome! If you'd like to contribute, please fork the repository
# and create a new branch for your feature or bugfix. Once your changes are ready,
# submit a pull request for review.

# Steps to contribute:
# 1. Fork the repository
# 2. Create a new branch (e.g., `feature/your-feature-name`)
# 3. Commit your changes
# 4. Push to the branch
# 5. Submit a pull request

### License

# This project is licensed under the MIT License. See the LICENSE file for more details.

### Acknowledgements

# Special thanks to the contributors and the open-source community for their support.
# This project uses the following libraries and tools:
# - Next.js
# - React
# - Docker
# - AWS EC2
# - And many more...
