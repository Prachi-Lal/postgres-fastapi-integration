# postgres-fastapi-integration
Online flower shop database backend with fastapi integration

## Online Flower Shop API

Project Overview
The Online Flower Shop API is a web application built using FastAPI and PostgreSQL. It serves as a virtual showcase for different types of flowers, allowing users to register, browse flowers, and place orders online. The application aims to automate the activities related to a florist shop, making online shopping easy and efficient.

### Features

User registration and authentication

Browse flowers with details

Place orders for flowers

Manage stock quantities automatically

Simple and intuitive API design

### Technologies Used

FastAPI: A modern web framework for building APIs with Python 3.6+ based on standard Python type hints.

PostgreSQL: A powerful, open-source relational database system.

Psycopg2: PostgreSQL adapter for Python.

Uvicorn: ASGI server for running FastAPI applications.

### Installation

Clone the Repository:
```git clone https://github.com/Prachi-Lal/postgres-fastapi-integration.git```

Create a virtual environment (Optional but recommended):
```python -m venv venv```
```venv\Scripts\activate```

Install Required Packages:
```pip install -r requirements.txt```

### Database Setup
Install PostgreSQL: Make sure you have PostgreSQL installed on your machine. You can download it from PostgreSQL's official website.

Run the SQL Scripts: Use the provided SQL scripts to create the necessary tables and insert sample data. You can execute the SQL commands in a PostgreSQL client like psql or any GUI tool like pgAdmin.

### Running the Application
To run the FastAPI application, use the following command:
```uvicorn main:app --reload```

### API Endpoints

User Registration

Endpoint: /register/

Method: POST

Request Body:

```json
{
    "username": "new_user",
    "password": "password123",
    "email": "new_user@example.com",
    "role": "Customer"}
```

A successful run would look like this:

```json
{
    "message": "User  registered successfully"
}
```

Wheras, an error would look like this:

```json
{
  "detail": "duplicate key value violates unique constraint \"users_username_key\"\nDETAIL:  Key (username)=(new_user) already exists.\n"
}
```





