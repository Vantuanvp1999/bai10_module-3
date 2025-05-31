<%@ page import="java.util.List" %>
<%@ page import="com.example.baitap1.Customer" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <style>
        table{
            width: 80%;
            margin: 5px;
            border-collapse: collapse;
            text-align: left;
        }
        th,td{
            border: 1px solid #ccc;
            padding:5px
        }
        th{
            background-color: #f2f2f2;

        }
        h2{
            text-align: center;
        }
    </style>
</head>
<body>
<%
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer("Mai Văn Hoàn", "1983-08-20", "Hà Nội", "https://picsum.photos/id/237/200/300"));
    customers.add(new Customer("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang", "https://picsum.photos/id/237/200/300"));
    customers.add(new Customer("Nguyễn Thái Hòa", "1983-08-22", "Nam Định", "https://picsum.photos/id/237/200/300"));
    customers.add(new Customer("Trần Đăng Khoa", "1983-08-17", "Hà Tây", "https://picsum.photos/id/237/200/300"));
    request.setAttribute("customersList", customers);
%>
<h2> Danh sách khách hàng</h2>
<table>
    <thead>
    <tr>
        <th>Họ và tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="customer" items="${customersList}">
        <tr>
            <td>${customer.name}</td>
            <td>${customer.dob}</td>
            <td>${customer.address}</td>
            <td><img src="${customer.image}" alt="ảnh nhân vật" style="width: 60px; height: 60px"></td>
        </tr>
    </c:forEach>

    </tbody>
</table>
</body>
</html>