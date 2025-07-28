package feedback_app;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet("/feedback")
public class FeedbackServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//form data
		String email= req.getParameter("email");
		
		String phone = req.getParameter("phone");
		
		String feedback_message = req.getParameter("feedback_message");
		
		
		resp.setContentType("text/html");
		PrintWriter writer =resp.getWriter();
		
		try {
            // Step 1: Load the Oracle JDBC Driver
            Class.forName("oracle.jdbc.driver.OracleDriver");

            // Step 2: Create a Connection
            Connection conn = DriverManager.getConnection(
                "jdbc:oracle:thin:@//hkpradhan:1521/orcl", "system", "hkp");
            // SQL insert query
            String sql = "INSERT INTO feedback (email, phone, message) VALUES (?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, phone);
            ps.setString(3, feedback_message);
            int rowsInserted = ps.executeUpdate();
            if (rowsInserted > 0) {
                writer.println("<h2>Thank you for your feedback!</h2>");
            } else {
                writer.println("<h2>Failed to store your feedback.</h2>");
            }

            ps.close();
            conn.close();
		}
		catch (Exception e) {
            e.printStackTrace();
        }
		
		writer.println("<h1>Feedback servlet working</h1>");
		writer.println("""
				<h2> your form details that you have submited </h2>
				<h3> Email: %s </h3>
				<h3> Phone No: %s</h3>
				<h3> Feedback Msg: %s</h3>
				""".formatted(email,phone,feedback_message));
//		resp.sendRedirect("/feedback_app/feedback.jsp#");

	}
	
}