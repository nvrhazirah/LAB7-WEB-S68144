/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author zira
 */
@WebServlet("/profileServlet")
public class profileServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String username = request.getParameter("username");
            String icNo = request.getParameter("icNo"); 
            String firstName= request.getParameter("firstName");

            userProfile e = new userProfile();
            e.setUsername(username);
            e.setIcNo(icNo);
            e.setFirstName(firstName);

            int status = userProfileDao.save(e);
            if (status > 0) {
                out.print("<p>Record saved successfully!</p>");
                request.getRequestDispatcher("entryForm.jsp").include(request, response);
            } else {
                out.println("Sorry! unable to save record");
            }
        } finally {
            out.close();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Profile Servlet";
    }
}


