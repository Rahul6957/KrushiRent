# 🚜 KrushiRent Platform

## Software Requirements Specification (SRS)

### 1. Introduction

The KrushiRent Platform is a web-based application that connects farmers with agricultural equipment owners.

Farmers can search for agricultural equipment such as tractors, harvesters, cultivators, and sprayers. They can check equipment availability and request bookings.

Equipment owners can list their agricultural machines, manage rental prices, and accept or reject booking requests.

---

## 2. Objectives

The main objectives of the system are:

- Help farmers easily find agricultural equipment.
- Allow farmers to rent equipment from nearby owners.
- Allow equipment owners to generate income from unused machinery.
- Provide equipment availability management.
- Prevent overlapping equipment bookings.
- Provide secure user authentication.
- Provide booking and rental history.
- Provide ratings and reviews.

---

## 3. User Roles

### 👨‍🌾 Farmer

The farmer can:

- Register and login.
- Manage profile.
- Search equipment.
- Filter equipment.
- View equipment details.
- Check availability.
- Book equipment.
- Cancel bookings.
- View booking history.
- Give ratings and reviews.

### 🚜 Equipment Owner

The equipment owner can:

- Register and login.
- Manage profile.
- Add equipment.
- Update equipment.
- Delete equipment.
- Set rental prices.
- Manage equipment availability.
- View booking requests.
- Approve or reject bookings.
- View rental history.

### 👨‍💼 Admin

The admin can:

- Manage users.
- Manage equipment.
- Approve equipment listings.
- Reject equipment listings.
- Manage complaints.
- View system reports.

---

## 4. Functional Requirements

### 4.1 Authentication

The system should provide:

- User registration.
- User login.
- JWT authentication.
- Role-based authorization.
- Logout functionality.

### 4.2 Equipment Management

Equipment owners should be able to:

- Add equipment.
- Update equipment.
- Delete equipment.
- View their equipment.
- Set rental price.
- Set equipment availability.

### 4.3 Equipment Search

Farmers should be able to search equipment using:

- Equipment name.
- Equipment category.
- Location.
- Rental price.

### 4.4 Booking Management

Farmers should be able to:

- Select equipment.
- Select start date.
- Select end date.
- Create booking request.
- View booking status.
- Cancel eligible bookings.

### 4.5 Booking Approval

Equipment owners should be able to:

- View booking requests.
- Approve booking.
- Reject booking.

### 4.6 Reviews

Farmers should be able to:

- Give rating.
- Add review.
- View equipment reviews.

---

## 5. Non-Functional Requirements

### Performance

API responses should normally be returned within a reasonable time under normal load.

### Security

- Passwords must be securely hashed.
- JWT should be used for authentication.
- Role-based authorization should be implemented.
- SQL parameters should be used to prevent SQL injection.

### Usability

The application should be simple and user-friendly for farmers.

### Maintainability

The application should follow a clean and modular architecture.

---

## 6. Technology Stack

### Backend

- C#
- ASP.NET Core Minimal API
- Dapper

### Frontend

- React.js
- JavaScript
- HTML
- CSS

### Database

- MySQL

### Tools

- Visual Studio / VS Code
- MySQL Workbench
- Postman
- Git
- GitHub

---

## 7. Project Scope

### Version 1

The first version will contain:

- Authentication
- User management
- Equipment management
- Equipment search
- Booking management
- Booking approval
- Basic reviews

### Future Version

Future features may include:

- Online payment.
- Google Maps.
- Location-based equipment search.
- SMS notifications.
- WhatsApp notifications.
- Equipment maintenance tracking.
- AI recommendations.