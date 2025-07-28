# Feedback App

A Java-based web application for collecting and storing user feedback using JSP, Servlets, JDBC, and Oracle.

## 🧰 Tech Stack

- Java 19 (or newer)
- JSP & Servlets (Jakarta EE 10)
- Oracle DB
- JDBC
- Apache Tomcat
- Maven
- HTML/CSS

## 🚀 Features

- Submit feedback through a responsive web form
- Store feedback in a database using JDBC
- Server-side validation
- Clear success and error responses
- Modular and clean Maven project structure

## 🛠️ Setup & Run

### Prerequisites:
- Java JDK 19+
- Apache Tomcat 10+ (or any compatible servlet container)
- Maven
- MySQL database (or Oracle DB if you're using that)
- Git (optional)

### Steps:

1. **Clone the Repository**
   ```bash
   git clone https://github.com/Hkrushna-pradhan/feedback_app.git
   cd feedback_app
Configure Database

Create a database named feedback_db (or your DB name)

Create a table (example):

CREATE TABLE feedback (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    message TEXT
);
Update DB Config in Java
In your Servlet class or DB config utility:

String url = "jdbc:oracle:thin://localhost:3306/feedback_db";
String user = "your_db_username";
String password = "your_db_password";
Build with Maven


mvn clean install
Deploy

Copy target/feedback_app.war to your Tomcat webapps/ folder

Start Tomcat

Visit: http://localhost:8080/feedback_app

📂 Project Structure
feedback_app/
├── src/
│   └── main/
│       ├── java/            # Servlets and DB logic
│       └── webapp/
│           ├── index.jsp
│           ├── success.jsp
│           ├── error.jsp
│           └── WEB-INF/web.xml
├── pom.xml
└── README.md
📌 Future Enhancements
Admin panel to view submitted feedback

Pagination and search in feedback list

Email notifications

Field validation using JavaScript

Switch from JDBC to JPA/Hibernate for ORM

👤 Author

Your Name – @Hkrushna-pradhan
<img width="1910" height="811" alt="Screenshot 2025-07-29 010547" src="https://github.com/user-attachments/assets/0e9f5dd1-97ba-4606-acb8-b7e3b75983d0" />

<img width="1916" height="824" alt="Screenshot 2025-07-29 010524" src="https://github.com/user-attachments/assets/2f87e30a-e560-4f40-948f-58f43c712187" />
