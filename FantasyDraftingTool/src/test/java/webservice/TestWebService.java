package webservice;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.log4j.Logger;
import org.junit.Test;
import java.util.*;
import javax.ws.rs.client.*;
import javax.ws.rs.core.MediaType;
import static org.junit.Assert.*;
import edu.matc.webservice.*;
import org.json.*;

/**
 * Created by craigwilson on 12/13/16.
 */
public class TestWebService {

    private Logger log = Logger.getLogger(this.getClass());

    @Test
    public void testNflNewsApi() throws Exception {
        Client client = ClientBuilder.newClient();
        WebTarget target =
                client.target("https://newsapi.org/v1/articles?source=nfl-news&" +
                        "apiKey=bc0b6844d7ba447fb6de98c9ecf80b0d");
        String response = target.request(MediaType.APPLICATION_JSON).get(String.class);

        ObjectMapper mapper = new ObjectMapper();
        WebServiceResults webServiceResults = mapper.readValue(response, WebServiceResults.class);
        List<ArticlesItem> allArticles = new ArrayList<ArticlesItem>();
        allArticles = webServiceResults.getArticles();

        JSONArray jsonArray = new JSONArray(allArticles);

        log.warn(jsonArray);

        assertEquals(10, allArticles.size());
    }
}
