<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .navbar {
            background-color: #6f42c1 !important; /* Purple */
        }
        .navbar-brand {
            font-weight: 700;
            font-size: 1.8rem;
        }
        .list-group-item {
            display: flex;
            align-items: center;
            justify-content: space-between;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.05);
            margin-bottom: 15px;
            padding: 20px;
        }
        .list-left {
            display: flex;
            align-items: center;
            gap: 20px;
        }
        .list-left i {
            font-size: 2rem;
        }
        .list-title {
            font-weight: 600;
            font-size: 1.2rem;
        }
        .list-description {
            color: #6c757d;
            font-size: 0.95rem;
        }
        .btn-purple {
            background-color: #6f42c1;
            color: white;
        }
        .btn-purple:hover {
            background-color: #5a32a3;
        }
        .text-purple {
            color: #6f42c1 !important;
        }
        .btn-action {
            min-width: 100px;
            font-weight: 500;
        }
        .status-message {
            position: fixed;
            top: 20px;
            right: 20px;
            z-index: 1000;
            animation: fadeInOut 3s ease-in-out;
        }
        @keyframes fadeInOut {
            0% {opacity: 0;}
            10% {opacity: 1;}
            90% {opacity: 1;}
            100% {opacity: 0;}
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">EmpManage</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="display">View Employees</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="reports">Reports</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container my-5">
        <h1 class="text-center mb-5">Employee Management System</h1>
        
        <div class="list-group">
            <div class="list-group-item bg-white">
                <div class="list-left">
                    <i class="fas fa-user-plus text-purple"></i>
                    <div>
                        <div class="list-title">Add Employee</div>
                        <div class="list-description">Add a new employee to the database</div>
                    </div>
                </div>
                <a href="empadd.jsp" class="btn btn-purple btn-action">
                    <i class="fas fa-plus me-2"></i>Add
                </a>
            </div>

            <div class="list-group-item bg-white">
                <div class="list-left">
                    <i class="fas fa-edit text-warning"></i>
                    <div>
                        <div class="list-title">Update Employee</div>
                        <div class="list-description">Update existing employee details</div>
                    </div>
                </div>
                <a href="empupdate.jsp" class="btn btn-warning text-white btn-action">
                    <i class="fas fa-pen me-2"></i>Update
                </a>
            </div>

            <div class="list-group-item bg-white">
                <div class="list-left">
                    <i class="fas fa-trash-alt text-danger"></i>
                    <div>
                        <div class="list-title">Delete Employee</div>
                        <div class="list-description">Remove an employee from the database</div>
                    </div>
                </div>
                <a href="empdelete.jsp" class="btn btn-danger btn-action">
                    <i class="fas fa-trash me-2"></i>Delete
                </a>
            </div>

            <div class="list-group-item bg-white">
                <div class="list-left">
                    <i class="fas fa-users text-success"></i>
                    <div>
                        <div class="list-title">View Employees</div>
                        <div class="list-description">View all employee records</div>
                    </div>
                </div>
                <a href="display" class="btn btn-success btn-action">
                    <i class="fas fa-list me-2"></i>View All
                </a>
            </div>
        </div>
    </div>

    <c:if test="${param.status == 'success'}">
        <div class="status-message alert alert-success alert-dismissible fade show" role="alert">
            <strong>Success!</strong> Operation completed successfully.
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    </c:if>
    
    <c:if test="${param.status == 'error'}">
        <div class="status-message alert alert-danger alert-dismissible fade show" role="alert">
            <strong>Error!</strong> Something went wrong. Please try again.
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    </c:if>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Auto-close alerts after 3 seconds
        setTimeout(() => {
            const alerts = document.querySelectorAll('.alert');
            alerts.forEach(alert => {
                new bootstrap.Alert(alert).close();
            });
        }, 3000);
    </script>
</body>
</html>
