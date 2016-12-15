package edu.matc.controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import org.apache.log4j.*;

/**
 * Created by craigwilson on 12/14/16.
 */
@WebServlet (
        name = "home",
        urlPatterns = {"", "/home"}
)
public class HomePageController extends HttpServlet {
    private final Logger log = Logger.getLogger(this.getClass());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        log.info("In HomePageController doGet method");

        /** Set title */
        request.setAttribute("pageTitle", "Home");

        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }


}
