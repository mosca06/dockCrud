# dockCrud

A simples CRUD to gain experience in Dock 
## Overview

This project is a simple CRUD (Create, Read, Update, Delete) application for managing "person" entities. The application is built with Ruby on Rails and is containerized using Docker. This setup is designed to help you understand Docker and containerization concepts.

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/) installed on your machine
- [Docker Compose](https://docs.docker.com/compose/install/) installed on your machine

## Getting Started

### Clone the Repository

First, clone this repository to your local machine:

```bash
git clone https://github.com/mosca06/dockCrud.git
cd dockCrud
```
Build and start the containers:
```bash
docker compose up --build
```
Run database migrations:
In another terminal window, run:
```bash
docker compose run web rake db:create db:migrate
```
Access the application:
Open your web browser and navigate to http://localhost:3000 to view the application.

Usage
You can use the application to create, read, update, and delete "person" records.
The Rails server runs inside a Docker container and is accessible via port 3000 on your localhost.

## Testing the API
You can test the API endpoints using tools like Postman, cURL, or HTTPie. Here are some example requests:
```bash
curl http://localhost:3000/api/v1/people
```
