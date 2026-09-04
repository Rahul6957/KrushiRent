
---

# 4. `user-stories.md`

```markdown
# 👥 User Stories

## Farm Equipment Rental Platform

---

# 👨‍🌾 Farmer User Stories

## US-001: Farmer Registration

**As a farmer,**

I want to create an account

**So that**

I can rent agricultural equipment.

### Acceptance Criteria

- Farmer can enter name.
- Farmer can enter email.
- Farmer can enter mobile.
- Farmer can create password.
- Duplicate email should not be allowed.
- Registration should be successful with valid data.

---

## US-002: Farmer Login

**As a farmer,**

I want to login

**So that**

I can access the platform.

### Acceptance Criteria

- Valid credentials should allow login.
- Invalid credentials should be rejected.
- JWT token should be generated after successful login.

---

## US-003: Search Equipment

**As a farmer,**

I want to search agricultural equipment

**So that**

I can find suitable machinery.

### Acceptance Criteria

- Search by equipment name.
- Filter by category.
- Filter by location.
- Filter by price.

---

## US-004: View Equipment Details

**As a farmer,**

I want to view equipment details

**So that**

I can decide whether to rent it.

### Acceptance Criteria

- Equipment name displayed.
- Equipment category displayed.
- Price displayed.
- Location displayed.
- Availability displayed.
- Owner information displayed.

---

## US-005: Book Equipment

**As a farmer,**

I want to book equipment for specific dates

**So that**

I can use the equipment for farming.

### Acceptance Criteria

- Start date required.
- End date required.
- Start date cannot be in the past.
- End date must be after start date.
- Overlapping bookings must be rejected.
- Total amount should be calculated.

---

## US-006: Cancel Booking

**As a farmer,**

I want to cancel my booking

**So that**

I can cancel an unwanted rental.

### Acceptance Criteria

- Farmer can cancel their own booking.
- Farmer cannot cancel another user's booking.
- Cancelled booking should not remain active.

---

# 🚜 Equipment Owner User Stories

## US-007: Add Equipment

**As an equipment owner,**

I want to add my agricultural equipment

**So that**

farmers can rent it.

### Acceptance Criteria

- Owner can enter equipment name.
- Owner can select category.
- Owner can enter price.
- Owner can enter location.
- Equipment should be saved successfully.

---

## US-008: Update Equipment

**As an equipment owner,**

I want to update my equipment

**So that**

the equipment information remains accurate.

### Acceptance Criteria

- Owner can update their own equipment.
- Owner cannot update another owner's equipment.
- Invalid data should be rejected.

---

## US-009: Manage Booking Requests

**As an equipment owner,**

I want to manage booking requests

**So that**

I can control who rents my equipment.

### Acceptance Criteria

- Owner can view booking requests.
- Owner can approve booking.
- Owner can reject booking.
- Conflicting bookings cannot be approved.

---

## US-010: View Earnings

**As an equipment owner,**

I want to view my rental earnings

**So that**

I can track my income.

### Acceptance Criteria

- Owner can view completed rentals.
- Owner can view total earnings.
- Earnings should be calculated correctly.

---

# 👨‍💼 Admin User Stories

## US-011: Approve Equipment

**As an admin,**

I want to approve equipment listings

**So that**

only valid equipment is available to farmers.

### Acceptance Criteria

- Admin can view pending equipment.
- Admin can approve equipment.
- Admin can reject equipment.

---

## US-012: Manage Users

**As an admin,**

I want to manage users

**So that**

I can maintain platform security.

### Acceptance Criteria

- Admin can view users.
- Admin can activate users.
- Admin can deactivate users.