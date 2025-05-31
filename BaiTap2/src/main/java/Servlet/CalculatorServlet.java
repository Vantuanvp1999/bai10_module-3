package Servlet;

import model.Calculator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculatorServlet", urlPatterns = "/calculate")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        float firstOperand = Integer.parseInt(req.getParameter("first-operand"));
        float secondOperand = Integer.parseInt(req.getParameter("second-operand"));
        char operator = req.getParameter("operator").charAt(0);
        PrintWriter out = resp.getWriter();
        out.println("<html>");
        out.println("<1> Result: </h1>");
        try {
            float result = Calculator.calculate(firstOperand, secondOperand, operator);
            out.println(firstOperand + " " + operator + " " +secondOperand+ " = " + result);
        }catch (Exception e) {
            out.println("Error: "+e.getMessage());
        }
        out.println("</html>");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
