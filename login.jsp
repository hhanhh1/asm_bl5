<%-- 
    Document   : index
    Created on : Apr 22, 2022, 3:25:44 AM
    Author     : Quynh_Nhu
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.Category" %>
<%@page import="model.Product" %>
<%@page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Hina</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <%
       Product product =  (Product) request.getAttribute("product");
        %>
    </head>
    <style>
        body {
            background-image: url(Picture/background2.jpg);
            background-size: cover;
            /*opacity: 0.4*/
            /*background-position: bottom;*/
        }
        .login{
            height: auto;
            width: 50%;
            margin-left: 25%;
            margin-top: 12%;
            color: rgb(175, 84, 9);
            font-weight: bold;
            font-family: Lucida Sans Unicode;
            border: 1px gray solid;
            border-radius: 15px;
            background: rgba(255, 255, 255,0.7) ;
            box-shadow: 0px 0px 17px 2px rgba(255, 255, 255,0.8);
        }
        .form-label{
            margin: 2%;
        }
        .form-control{
            margin-left: 10%;
            width:auto;
            background: transparent;
            border: 0;
            outline: 0;
            color: rgb(27, 26, 26);
            border-bottom: 1px solid rgb(49, 47, 47);
        }

    </style>

    <body >


        <form action="login" method="POST" style=" display: block;justify-content: center;  margin: 12%;">
            <div class="login">
                <h1 style="display: flex;text-align: center;margin-left: 10%; margin-top: 5%;color: #4A4A4A; font-family: Trebuchet MS">
                    <i class="bi bi-box-arrow-in-right" style="margin-right: 4px; color: #4A4A4A"></i>Login</h1>
                <div class="mb-3">
                    <i class="bi bi-person-fill" style="color:#4A4A4A; margin-left: 10%"  ></i>
                    <label for="username" class="form-label" style=" font-family: Trebuchet MS;color: #4A4A4A;margin-left: 0px">Username</label>
                    <input placeholder=" Username" type="text" class="form-control" id="username" name="username" aria-describedby="emailHelp" style="background-color: none">
                    <div id="emailHelp" class="form-text" style="margin-left: 10%;" >We'll never share your email with anyone else.</div>
                </div>
                <div class="mb-3">
                    <i class="bi bi-lock-fill" style="color:#4A4A4A; margin-left: 10%"  ></i>
                    <label for="pasword" class="form-label"  style="margin-left: 0px; font-family: Trebuchet MS;color: #4A4A4A">Password</label>
                    <input placeholder=" Password" type="password" class="form-control" style="background-color: none" id="password" name="password" >
                </div>
                <div class="mb-3 form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="remember" style="margin-left: 7%;">
                    <label class="form-check-label" for="exampleCheck1"  style="margin-left: 3%;">Remember me</label>
                </div>
                <h3 class="text-danger">${error}</h3>
                <button type="submit" class="btn btn-primary w-25 text-center" style="margin-bottom: 5%; margin-left: 10%;background-color: #C43B68;border: 1px gray solid;box-shadow: 2px 2px 2px rgb(102, 102, 102); color: white">
                    Login
                </button>
            </div>


        </form>

    </body>
</html>
