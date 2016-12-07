package edu.matc.controller;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import org.apache.log4j.*;
import edu.matc.entity.Player;
import edu.matc.persistence.PlayerDao;
/**
 * Created by craigwilson on 11/23/16.
 */
@WebServlet(name="getPlayers", urlPatterns = {"/listOfPlayers"})
public class GetPlayersServlet extends HttpServlet{

    private PlayerDao playerDao;

    private final Logger logger = Logger.getLogger(this.getClass());



    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        playerDao = new PlayerDao();

        Player player = (Player) playerDao.get(1);

        List<Player> playerList = playerDao.getAll();

        logger.warn(player.getFullName());


        request.setAttribute("onePlayer", player);
        request.setAttribute("allPlayers", playerList);
        logger.info("inside the players servlet.");


        request.getRequestDispatcher("/listPlayers.jsp").forward(request, response);


    }


}
