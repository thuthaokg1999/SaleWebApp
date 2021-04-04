<%-- 
    Document   : header
    Created on : Apr 4, 2021, 11:16:53 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <ul class="navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="#">Trang chủ</a>
        </li>
        <c:forEach items="${categories}" var="cate">
            <li class="nav-item">
                <a class="nav-link" href="#">${cate.name}</a>
            </li>
        </c:forEach>
    </ul>
</nav>
