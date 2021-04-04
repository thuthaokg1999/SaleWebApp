<%-- 
    Document   : product
    Created on : Apr 4, 2021, 2:26:30 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>  

<h1 class="text-center text-success">QUẢN LÝ SẢN PHẨM</h1>
<form:form method="post" modelAttribute="product">
    <div class="form-group">
        <label><spring:message code="product.name" /></label>
        <form:input cssClass="form-control" path="name"/>
    </div>
    <div class="form-group">
        <label><spring:message code="product.desc" /></label>
        <form:input cssClass="form-control" path="description"/>
    </div>
    <div class="form-group">
        <label><spring:message code="product.price" /></label>
        <form:input cssClass="form-control" path="price"/>
    </div>
    <div class="form-group">
        <label><spring:message code="product.category" /></label>
        <form:select path="category" cssClass="form-group">
            <c:forEach items="${categories}" var="cate">
                <option id="${cate.id}">${cate.name}</option>
            </c:forEach>
        </form:select>
    </div>
    <div>
        <input type="submit" class="btn btn-danger" value="<spring:message code="product.submit" />"/>
    </div>
</form:form>
