import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "productDiscountServlet", urlPatterns = "/discount")
public class ProductDiscountCalculator extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       float price = Float.parseFloat(request.getParameter("price"));
       float percent = Float.parseFloat(request.getParameter("percent"));
       String description = request.getParameter("description");
       double discountAmount = (price * percent * 0.01);
       double total = discountAmount + price;

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Product Description: " + description + "</h1>");
        writer.println("<h1>List Price: " + price + " vnd</h1>");
        writer.println("<h1>Discount Percent: " + percent + " %</h1>");
        writer.println("<h1>Discount Amount: " + discountAmount + " vnd</h1>");
        writer.println("<h1>Discount Price: " + total + " vnd</h1>");
        writer.println("</html>");
    }
}
