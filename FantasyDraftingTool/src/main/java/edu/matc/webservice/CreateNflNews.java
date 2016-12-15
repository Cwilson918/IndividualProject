package edu.matc.webservice;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import org.apache.log4j.Logger;
import com.fasterxml.jackson.databind.ObjectMapper;
import edu.matc.webservice.WebServiceResults;
import javax.ws.rs.client.*;
import javax.ws.rs.core.MediaType;


/**
 *
 */
@WebServlet(
        name = "createNflNews",
        urlPatterns = {"/nflNews"}
)
public class CreateNflNews extends HttpServlet {

    private final Logger log = Logger.getLogger(this.getClass());

    public void doGet(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse)
            throws ServletException, IOException {

        log.warn("Inside CreateNflNews Servlet");

        Client client = ClientBuilder.newClient();
        WebTarget target =
                client.target("https://newsapi.org/v1/articles?source=nfl-news&" +
                        "apiKey=bc0b6844d7ba447fb6de98c9ecf80b0d");
        String webServiceResponse = target.request(MediaType.APPLICATION_JSON).get(String.class);

        ObjectMapper mapper = new ObjectMapper();
        WebServiceResults webServiceResults = mapper.readValue(webServiceResponse, WebServiceResults.class);
        List<ArticlesItem> allArticles = new ArrayList<ArticlesItem>();
        allArticles = webServiceResults.getArticles();
        log.warn(allArticles);

        httpServletRequest.setAttribute("allArticles", allArticles);

        RequestDispatcher dispatcher = httpServletRequest.getRequestDispatcher("/nflNews.jsp");
        dispatcher.forward(httpServletRequest, httpServletResponse);


    }
}

