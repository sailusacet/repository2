package com.techm;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/VisitorCounterServlet")
public class VisitorCounterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static int visitorCount = 0;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        synchronized(this) {
            visitorCount++;
        }
        request.setAttribute("visitorCount", visitorCount);
        request.getRequestDispatcher("/visitorCount.jsp").forward(request, response);
    }
}
