<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 5/31/2025
  Time: 1:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Map<String,String> dictionary = new HashMap<>();

    %>
<%
    dictionary.put("hello", "Xin chào");
    dictionary.put("how", "Thế nào");
    dictionary.put("book", "Quyển vở");
    dictionary.put("computer", "Máy tính");
    String search = request.getParameter("search");
    String result = dictionary.get(search);
    PrintWriter printWriter = response.getWriter();
    if(result!=null){
    printWriter.println("Word: "+search);
    printWriter.println("Result: "+result);
    }
    else {
        printWriter.println("Not found");
    }

%>
</body>
</html>
