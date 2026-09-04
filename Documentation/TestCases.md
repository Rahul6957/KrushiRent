# 🧪 Test Cases

## Farm Equipment Rental Platform

| Test ID | Module | Test Case | Expected Result |
|---------|--------|------------|-----------------|
| TC-001 | Registration | Register with valid data | Registration successful |
| TC-002 | Registration | Register with existing email | Registration rejected |
| TC-003 | Registration | Register with invalid email | Validation error |
| TC-004 | Registration | Register without required fields | Validation error |
| TC-005 | Login | Login with valid credentials | JWT token returned |
| TC-006 | Login | Login with wrong password | 401 Unauthorized |
| TC-007 | Equipment | Owner adds valid equipment | Equipment created |
| TC-008 | Equipment | Farmer tries to add equipment | 403 Forbidden |
| TC-009 | Equipment | Owner updates own equipment | Update successful |
| TC-010 | Equipment | Owner updates another owner's equipment | Request rejected |
| TC-011 | Equipment | Get equipment by valid ID | Equipment returned |
| TC-012 | Equipment | Get invalid equipment ID | 404 Not Found |
| TC-013 | Search | Search equipment by category | Matching equipment returned |
| TC-014 | Search | Search equipment by location | Matching equipment returned |
| TC-015 | Booking | Create valid booking | Booking created |
| TC-016 | Booking | Start date is in past | Booking rejected |
| TC-017 | Booking | End date before start date | Booking rejected |
| TC-018 | Booking | Overlapping booking | Booking rejected |
| TC-019 | Booking | Equipment unavailable | Booking rejected |
| TC-020 | Booking | Farmer views own bookings | Bookings returned |
| TC-021 | Booking | Farmer views another user's booking | Access denied |
| TC-022 | Booking | Owner approves booking | Booking approved |
| TC-023 | Booking | Owner rejects booking | Booking rejected |
| TC-024 | Booking | Farmer cancels booking | Booking cancelled |
| TC-025 | Review | Review completed booking | Review created |
| TC-026 | Review | Review pending booking | Review rejected |
| TC-027 | Review | Rating greater than 5 | Validation error |
| TC-028 | Admin | Admin approves equipment | Equipment approved |
| TC-029 | Admin | Farmer accesses admin API | 403 Forbidden |
| TC-030 | Security | Request without JWT | 401 Unauthorized |

---

# Detailed Test Cases

## TC-001: Valid Registration

### Steps

1. Open registration page.
2. Enter valid name.
3. Enter valid email.
4. Enter valid mobile.
5. Enter valid password.
6. Select Farmer role.
7. Click Register.

### Expected Result

User account should be created successfully.

---

## TC-018: Overlapping Booking

### Existing Booking

```text
Start Date: 10-09-2026
End Date: 12-09-2026