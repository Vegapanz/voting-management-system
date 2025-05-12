# 🗳️ Voting Management System

A Java Swing-based Voting Management System with MySQL backend. Built in NetBeans (v22), this system supports secure voter registration, login authentication, candidate voting, and admin-level reporting with PDF export functionality.

---

## 📌 Features

### 👤 Voter Features

- Secure registration with email format and 12-digit phone validation
- Passwords are hashed using SHA-256 before storage
- Login system with email & password verification
- Single vote per voter (tracked by `has_voted` column)
- Ballot screen with 8 radio button candidates
- Receipt displayed after vote submission with timestamp

### 🛡️ Admin Features

- Login via special email (`admin@vms.com`)
- Dashboard displays:
  - Candidates with vote counts (JTable)
  - Voter list with "Has Voted" status
- Export leaderboard to PDF (using iText 2.1.7)
- Reset all votes and voter statuses (with confirmation)

---

## 🛠️ Technologies Used

- **Java Swing** (GUI)
- **MySQL** (Database: `vms`)
- **JDBC** for database interaction
- **iText 2.1.7** for PDF generation

---

## 🧩 Database Structure

### `voters`

| Column      | Type         | Description             |
| ----------- | ------------ | ----------------------- |
| voterID     | INT (AI, PK) | Unique ID               |
| name        | VARCHAR      | Voter name              |
| password    | VARCHAR      | SHA-256 hashed password |
| email       | VARCHAR      | Unique voter email      |
| phoneNumber | VARCHAR      | 12-digit phone number   |
| has_voted   | BOOLEAN      | True after vote is cast |

### `candidate`

| Column      | Type         | Description      |
| ----------- | ------------ | ---------------- |
| candidateID | INT (AI, PK) | Unique ID        |
| name        | VARCHAR      | Candidate name   |
| votes       | INT          | Total vote count |

### `ballot`

| Column      | Type         | Description         |
| ----------- | ------------ | ------------------- |
| ballotID    | INT (AI, PK) | Unique ballot ID    |
| voterID     | INT (FK)     | Voter who voted     |
| candidateID | INT (FK)     | Candidate voted for |

---

## 🚀 How to Run

1. **Clone this repo**
2. Import into **NetBeans**
3. Setup **MySQL database** `vms` with the provided tables
4. Add `itext-2.1.7.jar` and `mysql-connector-j-9.3.0.jar` to the project libraries
5. Run `home.java` to start the application

---

## 🔐 Default Admin Login

```
Email: admin@vms.com
Password: admin123
```

Hash passwords using the same algorithm used in registration.

---

## 📄 License

This project is for educational purposes. iText 2.1.7 is licensed under LGPL/MPL.

---

## 🙌 Acknowledgments

Built with guidance from OpenAI and customized in Java Swing for university project use. Special thanks to contributors and testers! 💙
