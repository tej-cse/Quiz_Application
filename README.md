# 📝 Quiz Application

## 🚀 Overview
This is a **full-stack quiz application** that allows users to participate in quizzes, with role-based access for **students and teachers**. It includes:
- **Frontend:** React.js, JavaScript, HTML, CSS
- **Backend:** Spring Boot (Java), RESTful APIs
- **Database:** MySQL
- **Authentication:** JWT-based authentication

## 🛠️ Technologies Used
| Component   | Technology |
|-------------|-----------|
| Frontend    | React.js, JavaScript, HTML, CSS |
| Backend     | Spring Boot, Java, REST APIs |
| Database    | MySQL |

## 🏠 Project Structure
```
Quiz_Application/
│── frontend/       # React.js (Frontend)
│── backend/        # Spring Boot (Backend)
│── database/       # MySQL Database Dump
│── README.md       # Documentation
│── .gitignore      # Files to ignore
```

## 🚀 How to Set Up the Project

### 1️⃣ Clone the Repository

git clone https://github.com/yourusername/Quiz_Application.git
cd Quiz_Application

### 2️⃣ Setup the Database (MySQL)
1. Open MySQL and create a database:

   CREATE DATABASE quiz_db;
   
2. Import the database from the `database/` folder:
   
   mysql -u your_user -p quiz_db < database/database_dump.sql
   
3. Update **backend/src/main/resources/application.properties** with your MySQL credentials:
   
   spring.datasource.url=jdbc:mysql://localhost:3306/quiz_db
   spring.datasource.username=your_user
   spring.datasource.password=your_password


### 3️⃣ Run the Backend (Spring Boot)
Navigate to the `backend/` folder and start the Spring Boot server:

cd backend
mvn spring-boot:run

- The backend will run at: **http://localhost:8080**

### 4️⃣ Run the Frontend (React.js)
Navigate to the `frontend/` folder and start the React app:

cd frontend
npm install
npm start

- The frontend will run at: **http://localhost:3000**

## 📉 API Endpoints (Backend)
| Method  | Endpoint            | Description               |
|---------|---------------------|---------------------------|
| `POST`  | `/auth/register`    | Register a new user       |
| `POST`  | `/auth/login`       | Login and get JWT token   |
| `GET`   | `/quizzes`          | Fetch all quizzes         |
| `POST`  | `/quizzes`          | Create a new quiz         |
| `GET`   | `/questions/{id}`   | Get questions for a quiz  |


## 📉 Features
  
✅ CRUD operations for Quizzes & Questions  
✅ MySQL database integration  

## 🛠️ Future Enhancements

✅ User Registration & Login  
✅ Role-based access (Student, Teacher)  
✅ Secure API with JWT Authentication
✅ Add Admin Panel  
✅ Implement Leaderboard  
✅ Improve UI/UX  


## 💎 Contact
📌 **GitHub:** [yourusername](https://github.com/yourusername)  
📌 **Email:** tejpratap.ce@gmail.com  

