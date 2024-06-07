<%-- 
    Document   : entryForm
    Created on : 1 Jun 2024, 2:37:18 AM
    Author     : zira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Registration</title>
    </head>
    <body>
        <br/>
        <p><b>Profile Registration</b></p>
        <form name="Register" action="profileServlet" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Username :</td>
                        <td><input type="text" name="userName" size="15" required></td>
                    </tr>
                    <tr>
                        <td>IC No :</td>
                        <td><input type="text" name="icNo" size="15"></td>
                    </tr>
                    <tr>
                        <td>First Name :</td>
                        <td><input type="text" name="firstName" size="50"></td>
                    </tr>
                   
                    <tr>
                        <td>
                            <input type="submit" value="Submit" name="submit">
                            <input type="reset" value="Cancel" name="cancel"> 
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
