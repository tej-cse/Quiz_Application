# 📝 Quiz Application

## 🚀 Overview

This is a **full-stack quiz application** that allows users to participate in quizzes. 
  

## 🛠️ Technologies Used
| Component   | Technology |
|-------------|-----------|
| Frontend    | React.js, JavaScript, HTML, CSS |
| Backend     | Spring Boot, Java, REST APIs |
| Database    | MySQL |


## 🏠 Project Structure
```
Quiz_Application/
│── QuizApp/       # React.js (Frontend)
│── QuizAppBack-end/        # Spring Boot (Backend)
│── QuizAppDB/       # MySQL Database Dump
│── README.md       # Documentation
```

## 🚀 How to Set Up the Project

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/tej-cse/Quiz_Application/
cd Quiz_Application
```

### 2️⃣ Setup the Database (MySQL)
1. Open MySQL and create a database:
   ```sql
   CREATE DATABASE quiz_app;
   ```
2. Import the database from the `database/` folder:
   ```bash
   mysql -u your_username -p quiz_app < database/database_dump.sql
   ```
3. Update **QuizAppBack-end/src/main/resources/application.properties** with your MySQL credentials:
   ```properties
   spring.datasource.url=jdbc:mysql://localhost:3306/quiz_app
   spring.datasource.username=your_username
   spring.datasource.password=your_password
   ```

### 3️⃣ Run the Backend (Spring Boot)
Navigate to the `QuizAppBack-end/` folder and start the Spring Boot server:
```bash
cd backend
mvn spring-boot:run
```
- The backend will run at: **http://localhost:8080**

### 4️⃣ Run the Frontend (React.js)
Navigate to the `QuizApp/` folder and start the React app:
```bash
cd frontend
npm install
npm start
```
- The frontend will run at: **http://localhost:3000**

## 📉 API Endpoints (Backend)
| Method     | Endpoint                 | Description                       |
|------------|--------------------------|-----------------------------------|
| `POST`     | `/quiz/create`           | create a new quiz                 |
| `GET `     | `/quiz/{topic}`          | fetch quiz based on topic         |
| `DELETE`   | `/quiz/delete/{title}`   | delete a quiz based on its title  |
| `GET`      | `/questions/`            | Get  All questions                |
| `GET`      | `/questions/{category}`  | Get questions based on category   |
| `POST`     | `/questions/add`         | Add a question                    |
| `PuT`      | `/questions/update`      | update a question                 |
| `DELETE`   | `/quiz/delete`           | delete a question                 |




## 📉 Features

✅ Interactive Frontend
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
📌 **GitHub:** [tej-cse](https://github.com/tej-cse/)  
📌 **Email:** tejpratap.ce@gmail.com  

