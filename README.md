# Secure Online Banking Portal

A dynamic, full-stack Online Banking web application developed during an industry-aligned training program with **Knowledge Solutions India** during my second year of undergraduate studies. 

The application provides a distributed, browser-specific platform for banking users to register, log in, manage transactions, and securely access their financial dashboards.

---

##  Key Features

* **Secure Authentication:** Implements multi-tier validation checks for login, authentication, and authorization of users.
* **Database Consistency:** Enforces strict data consistency rules, table indexing, and database validations to maintain financial record integrity.
* **Responsive Frontend:** Browser-specific user interfaces built using Java Server Pages (JSP), HTML, and JavaScript.
* **Structured Reporting:** Administrative features that auto-generate associated financial reports based on business rules.

---

## 🛠️ Tech Stack & Requirements

* **IDE:** MyEclipse
* **Database:** MySQL Workbench (v8.0 CE) with standard table spaces and index optimization
* **Database Connector:** MySQL-Connector (v8.20) for robust JDBC-to-database communication
* **Frontend:** JSP (Java Server Pages), HTML, JavaScript
* **Backend Logic:** Java (Servlets/Business Logic)
* **Architecture:** MVC (Model-View-Controller) pattern

---

##  Directory Structure

```text
├── src/               # Java backend logic, servlets, and database configurations
├── WebContent/        # Front-end resources (JSP pages, HTML, and assets)
└── README.md          # Project documentation
```

---

##  Configuration Notes

### Database Setup

1. **Import Schema:** Import your database schema using **MySQL Workbench 8.0 CE**.
2. **Update Connection:** Update the JDBC connection parameters inside your Java database configuration class:
   * **URL:** `jdbc:mysql://localhost:3306/your_database_name`
3. **Add Connector:** Ensure `mysql-connector-java-8.20.jar` is added to your project dependencies under `WEB-INF/lib`.

---

##  Project Context & Contribution

* **Context:** Developed as a collaborative team assignment during a training course with Knowledge Solutions India.
* **Attribution:** Built on top of a relational database foundation and core web skeletons provided during training modules.
* **My Focus:** Implemented frontend JSP components, validated database connectivity via JDBC, and structured business logic rules.
