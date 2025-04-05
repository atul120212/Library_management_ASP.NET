# 📚 Library Management System (ASP.NET Web Forms)

A simple web-based Library Management System built using **ASP.NET Web Forms**, **C#**, and **SQL Server**. This project allows users to register, login, upload book images, and view/manage library content.

## 🚀 Features

- 🔐 User Registration and Login
- 🖼️ Book Image Upload
- 📄 View Book Listings
- 📚 Library Overview Pages
- 📞 Contact and About Us Sections
- 🧩 Master Page for consistent layout
- 📊 Grid View for displaying data

## 🛠️ Tech Stack

- **Frontend**: ASP.NET Web Forms, HTML, CSS
- **Backend**: C#, ADO.NET
- **Database**: SQL Server
- **IDE**: Visual Studio

## 📂 Project Structure

```bash
├── AboutUs.aspx
├── ContactUs.aspx
├── ImageUpload.aspx
├── Login.aspx
├── MasterPage.Master
├── Signup.aspx
├── TestGridView.aspx
├── styles/
├── Assets/
└── uploads/
```

## ⚙️ How to Run the Project

1. **Clone the Repository**

```bash
git clone https://github.com/atul120212/Library_management_ASP.NET.git
```

2. **Open in Visual Studio**

   Open the `.sln` file in Visual Studio.

3. **Configure the Database**

   - Ensure SQL Server is running.
   - Create a database and import the schema (if provided).
   - Update the connection string in `web.config` with your SQL Server credentials.

4. **Build and Run**

   - Build the solution.
   - Run the project using IIS Express or your local server.


## 📌 Notes

- Make sure the `uploads/` directory is writeable for image uploads.
- Ensure your SQL Server database allows connections from the application.

## ✨ Future Improvements

- Add Admin Panel for managing users and books
- Improve UI/UX with Bootstrap or modern frameworks
- Add book categories and search/filter functionalities
- Implement API for book listing and management

## 🙌 Contributing

Feel free to fork this project and contribute by submitting a pull request.

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).

---

Made with ❤️ by [Atul](https://github.com/atul120212)
