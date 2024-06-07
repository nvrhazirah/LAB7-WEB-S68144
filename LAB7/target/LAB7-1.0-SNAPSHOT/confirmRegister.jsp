<%-- 
    Document   : confirmRegister
    Created on : 1 Jun 2024, 2:37:00 AM
    Author     : zira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String studentid = request.getParameter("studentid"); 
            String name = request.getParameter("name"); 

            session.setAttribute("studentid", studentid);
            session.setAttribute("name", name);
        %>
        
        Welcome , <%=name%>!
        
        <form action="notificationRegister.jsp" method="POST">
            <table>
                <tr>
                    <td><br>
                        <input type="submit" value="Proceed">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
