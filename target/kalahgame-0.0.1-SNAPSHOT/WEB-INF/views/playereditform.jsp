<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body style="background-color: lightsteelblue">
<c:url var="editsave" value="/admin/editsave" ></c:url>
<form:form method="post" action="${editsave}" >
    <table >
        <tr>
            <td></td>
            <td><form:hidden  path="id" /></td>
        </tr>
        <td><b> ENTER 1 for "ADMIN_ROLE", 2 for "PLAYER_ROLE"</b></td>
        <tr>
            <td><b>Name :</b> </td>
            <td><form:input path="player_first_name"  /></td>
        </tr>
        <tr>
            <td><b>Login :</b></td>
            <td><form:input path="player_login" /></td>
        </tr>
        <tr>
            <td><form:hidden path="player_password" /></td>
        </tr>
        <tr>
            <td><b>Won:</b></td>
            <td><form:input path="won_games" /></td>
        </tr>

        <tr>
            <td><b>Lose :</b></td>
            <td><form:input path="lose_games" /></td>
        </tr>
        <tr>
            <td><b>Role:</b></td>
            <td><form:input path="role.id" /></td>
        </tr>
        <tr>
            <td><b>Email :</b></td>
            <td><form:input path="email" /></td>
        </tr>


        <tr>
            <td> </td>
            <td><input type="submit" value="Edit Save" /></td>
        </tr>
    </table>
</form:form>