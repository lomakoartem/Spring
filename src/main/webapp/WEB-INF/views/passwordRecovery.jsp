<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Recover Password Page</title>
</head>
<body style="background-color: lightsteelblue">
<center>
    <br><br><br><br><br><br>
    <div style="color: black;font-size: 30px"><b>Recover your password</b></div>
    <br><br>
    <c:url var="userPasswordRecovery" value="/generatePassword.html"/>
    <form:form id="registerForm"  action="${userPasswordRecovery}">
        <tr>
            <td><b>Enter your email:</b></td>
            <td><input name ="email" /></td>

        </tr>
            </tr>
                <tr><td></td><td>
                <input type="submit" value="Get New Password" />
            </td></tr>

    </form:form>
    <br>
    <%--<a href="/index.html" >Click Here to see User List</a>--%>
</center>
</body>
</html>

<html>
