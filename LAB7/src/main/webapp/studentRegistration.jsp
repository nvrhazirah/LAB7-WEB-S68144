<%-- 
    Document   : studentRegistration
    Created on : 1 Jun 2024, 2:36:32 AM
    Author     : zira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Registration</title>
    </head>
    <body>
        <h1>Student Registration</h1>
        <form action="confirmRegister.jsp" method="POST">
            <table>
                <tr>
                    <td>Student ID : </td>
                    <td><input type="text" name="studentid"></td>
                </tr>
                <tr>
                    <td>Name : </td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td><br>
                        <input type="submit" value="Submit">
                        <input type="reset" value="Reset">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
