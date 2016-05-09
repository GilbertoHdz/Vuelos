<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <c:url value="/resources/css/main.css" var="pageCss" />
  <%@include file="/WEB-INF/views/components/header.jsp" %>
  <title>Inicio</title>
</head>

<body>
  <%@include file="/WEB-INF/views/components/navbar.jsp" %>
  
  <div class="container">
    <h1>Hello world</h1>
  </div>
  
  <hr>
  
  <c:url value="/resources/js/main.js" var="PageJs" />
  <%@include file="/WEB-INF/views/components/footer.jsp" %>  
</body>

</html>