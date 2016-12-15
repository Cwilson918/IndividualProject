package edu.matc.controller;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import org.json.*;

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

        String searchedPlayer = request.getParameter("inputPlayerSearch");

        logger.info(searchedPlayer);
        logger.info("INSIDE PLAYER SEARCH SERVLET");
        List<Player> foundPlayers = playerDao.searchPlayers(searchedPlayer);

        JSONObject foundPlayersJson = new JSONObject();
        JSONArray foundPlayersArray = new JSONArray();
        JSONObject foundPlayerObject;

        for (Player foundPlayer : foundPlayers) {
            foundPlayerObject = new JSONObject();
            foundPlayerObject.put("fullName", foundPlayer.getFullName());
            foundPlayerObject.put("position", foundPlayer.getPosition());
            foundPlayerObject.put("team", foundPlayer.getTeam());
            foundPlayersArray.put(foundPlayerObject);
        }

        foundPlayersJson.put("foundPlayers", foundPlayersArray);



        /**
        request.setAttribute("foundPlayers", foundPlayers);

        request.getRequestDispatcher("/listPlayers.jsp").forward(request, response);
        */

        response.setContentType("application/json");
        response.getWriter().write(foundPlayersArray.toString());

    }
}
