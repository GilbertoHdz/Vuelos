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
	  
    <h2>
      Bienvenido : ${pageContext.request.userPrincipal.name}
    </h2>
    
    <h2>
      isAuthenticated() :  ${loggedIn}
    </h2>
    
    <sec:authorize access="hasRole('2') or hasRole('1')">
      hasRole() : Rol 2
    </sec:authorize>
    
    <sec:authorize access="hasRole('1')">
      hasRole() : Rol 1
    </sec:authorize>
    <br/>
    <c:url value="/usuario/list" var="usrsUrl" />
    <a href="${usrsUrl }">usrsUrl</a>
    
    <c:url value="/viaje/list" var="viajeUrl" />
    <a href="${viajeUrl }">viajeUrl</a>
    
    <c:url value="/usuario/add" var="addUsuarioUrl"></c:url>
    <a href="${addUsuarioUrl }">Agregar</a>

  </div>
  
  <hr>
  
  <c:url value="/resources/js/main.js" var="PageJs" />
  <%@include file="/WEB-INF/views/components/footer.jsp" %>  
</body>

</html>