<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <title>First Admin page</title>
</head>
<body style="background-color: lightsteelblue">
<center>
<h1>Admin page</h1>

<p>

    <a href="<%--${pageContext.request.contextPath}--%>/admin/userList.html">See players info</a><br/>
    <a href="${pageContext.request.contextPath}/success-login">Home page</a><br/>

    <c:url value="/logout" var="logoutUrl" />
</p>
</center>
</body>
</html>
