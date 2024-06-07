<%-- 
    Document   : index
    Created on : 1 Jun 2024, 2:31:41 AM
    Author     : zira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sample Perform CRUD Using Java Servlet</title>
    </head>
    <body>
        <h1>Sample Perform CRUD Using Java Servlet!</h1>
        <jsp:forward page="/UserController?action=listUser" />
    </body>
</html>
