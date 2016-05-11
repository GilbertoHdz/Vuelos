<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@page session="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <c:url value="/resources/css/main.css" var="pageCss" />
  <%@include file="/WEB-INF/views/components/header.jsp" %>
  <title>Login</title>
</head>
<body>
  <%@include file="/WEB-INF/views/components/navbar.jsp" %>
  
  <div class="container">
    
    <div id="login-box">
  
      <h2>Ingresa con tu usuario y contraseña</h2>
  
      <c:if test="${not empty error}">
        <div class="error">${error}</div>
      </c:if>
      <c:if test="${not empty msg}">
        <div class="msg">${msg}</div>
      </c:if>
  
      <form name='loginForm'
        action="<c:url value='/j_spring_security_check' />" method='POST'>
  
      <table>
        <tr>
          <td>User:</td>
          <td><input type='text' name='j_username'></td>
        </tr>
        <tr>
          <td>Password:</td>
          <td><input type='password' name='j_password' /></td>
        </tr>
        <tr>
          <td colspan='2'><input name="submit" type="submit"
            value="submit" /></td>
        </tr>
        </table>
  
        <input type="hidden" name="${_csrf.parameterName}"
        value="${_csrf.token}" />
  
      </form>
      
      <c:url value="/home" var="welcomeUrl"/>
      <a href="${welcomeUrl}">Inicio</a>
    </div>
    
  </div>
  
  <hr>
  
  <c:url value="/resources/js/main.js" var="PageJs" />
  <%@include file="/WEB-INF/views/components/footer.jsp" %>  
</body>
</html>