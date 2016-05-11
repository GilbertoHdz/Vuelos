<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<sec:authorize var="loggedIn" access="isAuthenticated()" />
<c:url value="/login" var="loginUrl"/>
<c:url value="/login?logout" var="logOuUrl"/>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container">
  
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/VuelosSpring/">Agencia vuelos</a>
    </div>
    
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="/VuelosSpring/">Inicio <span class="sr-only">(current)</span></a></li>
        <li><a href="#">Link</a></li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <c:if test="${!loggedIn }">
          <li><a href="${loginUrl}">Entrar</a></li>
		    </c:if>
		    <c:if test="${loggedIn }">
		      <li><a href="${logOuUrl}" type="submit">Salir</a></li>
        </c:if>
      </ul>
    </div>
    
   </div>
</nav>