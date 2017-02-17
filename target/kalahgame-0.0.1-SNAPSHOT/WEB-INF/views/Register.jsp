<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Being Java Guys | Registration Form</title>
</head>
<body style="background-color: lightsteelblue">
<center>
    <br><br><br><br><br><br>
    <div style="color: black;font-size: 30px">Welcome TO Kalah Game User Registration</div>
    <br><br>
    <script type="text/javascript">
        function ValidateEmail(mail) {
            if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(registerForm.email.value)) {
                return (true)
            }
            alert("You have entered an invalid email address!")
            return (false)
        }
        function validate() {
            var player_first_name = document.getElementById("player_first_name");
            var player_login = document.getElementById("player_login");
            var email = document.getElementById("email");

            var valid = true;
            if (player_first_name.value.length <= 0 || player_login.value.length <= 0 || email.value.length <= 0) {
                alert("Don't leave the field empty!");
                valid = false;
            }
            else {
                if (!ValidateEmail(email))
                    valid = false;
            }
            return valid;
        }
        ;

    </script>

    <c:url var="userRegistration" value="saveUser.html"/>
    <form:form id="registerForm" modelAttribute="user" method="post" action="${userRegistration}"
               onsubmit="return validate();">
        <table width="400px" height="150px">
            <tr>
                <td><form:label path="player_first_name">Player Name</form:label></td>
                <td><form:input path="player_first_name"/></td>
            </tr>

            <tr>
                <td><form:label path="player_login">Player Login</form:label></td>
                <td><form:input path="player_login"/></td>
            </tr>
            <tr>
                <td><form:label path="email">Player Email</form:label></td>
                <td><form:input path="email"/></td>
            </tr>
            <tr>
                <td><form:label path="player_password">Create Password</form:label></td>
                <td><form:input path="player_password" type="password"/></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="Register"/>
                </td>
            </tr>
        </table>

    </form:form>
    <br>
    <a href="/index.jsp">Go to Welcome Page</a>
</center>
</body>
</html>
