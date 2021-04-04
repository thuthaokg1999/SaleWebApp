<%-- 
    Document   : index
    Created on : Mar 27, 2021, 1:33:56 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<a href="index.jsp"></a>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1 class="text-center text-success">DANH SÁCH SẢN PHẨM</h1>
<table>
    <tr>
        <th>Mã sản phẩm</th>
        <th>Tên sản phẩm</th>
        <th>Gía sản phẩm</th>
    </tr>
    <c:forEach items="${products}" var="product">
    <tr>
        <td>${product.id}</td>
        <td>${product.name}</td>
        <td>${product.price} VNĐ</td>
    </tr>
    </c:forEach>
</table>