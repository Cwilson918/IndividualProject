package edu.matc.controller;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import com.google.gson.*;

import org.apache.log4j.*;
import edu.matc.entity.Player;
import edu.matc.persistence.PlayerDao;
/**
 * Created by craigwilson on 11/23/16.
 */
@WebServlet(name="playerSearch", urlPatterns = {"/playerSearch"})
public class PlayerSearch extends HttpServlet {

    private PlayerDao playerDao;

    private final Logger logger = Logger.getLogger(this.getClass());


    public void init() {
        playerDao = new PlayerDao();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String searchedPlayer = request.getParameter("playerSearch");

        List<Player> foundPlayers = playerDao.searchPlayers(searchedPlayer);

        String json = new Gson().toJson(foundPlayers);

        logger.warn(json);

        request.setAttribute("foundPlayers", foundPlayers);

        request.getRequestDispatcher("/listPlayers.jsp").forward(request, response);
    /**



        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
     */
    }
}
