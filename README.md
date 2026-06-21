# INDV-ASSIGNMENT-CSC584

- Name: Nur Syafiqah binti Hamzah
- Student ID: 2024415422
- Group: CDCS266 4B

- Project Description

The Student Profile Management System is a web-based application developed using Java Servlet, JSP, JavaBean, JDBC, HTML, CSS, and Apache Derby Database.

The system allows users to create and manage student profiles. Profile information entered through the form is stored in the database and can be viewed or searched later.

The application follows the MVC (Model-View-Controller) architecture:

Model: ProfileBean.java
View: JSP Pages
Controller: ProfileServlet.java
Technologies Used
HTML
CSS
Java Servlet
JSP
JavaBean
JDBC
Apache Derby Database
NetBeans IDE
GlassFish Server
Features Implemented
1. Add Profile

Users can enter:

Name
Student ID
Programme
Email
Hobbies
Short Self Introduction
2. Store Data into Database

Profile information is stored in the Profile table using JDBC.

3. View All Profiles

Users can view all stored profiles in a table format.

4. Search Profile

Users can search for a profile using Student ID.

5. User-Friendly Interface

The application includes:

Responsive design
Navigation menu
Styled forms and tables
Consistent pink theme
Database Information
Database Name

StudentProfilesDB

Table Name

Profile

Table Structure
Field	Data Type
studentID	VARCHAR(20)
name	VARCHAR(100)
programme	VARCHAR(100)
email	VARCHAR(100)
hobbies	VARCHAR(255)
introduction	VARCHAR(500)
Project Structure

Source Packages

controller
ProfileServlet.java
ProfileBean.java
DBConnection.java

Web Pages

index.html
profile.jsp
viewProfiles.jsp
style.css

HOME PAGE
<img width="1402" height="870" alt="Screenshot 2026-06-21 230122" src="https://github.com/user-attachments/assets/3ccd4b8d-2ecf-4173-813c-c89d5333fd69" />
<img width="1878" height="702" alt="Screenshot 2026-06-21 230140" src="https://github.com/user-attachments/assets/3b8c7ba4-986e-43e3-9183-bd5fea88667c" />
PROFILE DISPLAY PAGE
<img width="1267" height="793" alt="Screenshot 2026-06-21 230320" src="https://github.com/user-attachments/assets/9ce42979-63a8-453a-872b-1c76aa020fb3" />
VIEW PROFILE PAGE
<img width="1836" height="737" alt="Screenshot 2026-06-21 230336" src="https://github.com/user-attachments/assets/480f8d48-95b8-4b53-928e-bc2db40bbf2e" />
SEARCH PROFILE PAGE
<img width="1895" height="742" alt="Screenshot 2026-06-21 230158" src="https://github.com/user-attachments/assets/8e757701-eea2-42ba-8e1b-6129d9085258" />

