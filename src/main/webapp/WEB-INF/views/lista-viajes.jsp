<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@page session="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <c:url value="/resources/css/main.css" var="pageCss" />
  <%@include file="/WEB-INF/views/components/header.jsp" %>
<title>Viajes</title>
</head>
<body>
  <%@include file="/WEB-INF/views/components/navbar.jsp" %>
  <c:url value="/viaje/add" var="addViajeUrl"></c:url>
  
  <div class="container">
  
	  <h1>Lista de Viajes</h1>
	  
	  <c:if test="${loggedIn }">
     <sec:authorize access="hasRole('1')">
      <a href="${addViajeUrl }" class="btn btn-info btn-lg" >Agregar Viaje</a>
      <br>
     </sec:authorize>
    </c:if>
    
	  <hr>
	   
	  <div class="row">
	   <c:forEach var="v" items="${viajes }">
		  <div class="col-sm-4 col-md-3">
		    <div class="thumbnail">
		      <img src="..." alt="...">
		      <div class="caption">
		        <h2>${v.nombre }</h2>
		        <p>${v.descripcion }</p>
		        <p>Cantidad Disponible: ${v.disponibilidad }</p>
		        <p>Precio: <strong>$ ${v.precio }</strong>   Origen: <strong>${v.origen }</strong></p> 
		        <p>Fecha Inicio: <strong><fmt:formatDate value="${v.fechaInicio}" pattern="dd/MM/yyyy"/></strong></p>
		        <p>Fecha Fin: <strong><fmt:formatDate value="${v.fechaFin}" pattern="dd/MM/yyyy"/></strong></p> 
		        <p><a href="#" class="btn btn-success btn-xs" role="button">Comprar</a></p>
		        
		        <c:if test="${loggedIn }">
				      <sec:authorize access="hasRole('1')">
				        <c:url value="/viaje/update/${v.id }" var="editarUrl"/>
				        <c:url value="/viaje/delete/${v.id }" var="eliminarUrl"/>
				          
				        <p><a href="${editarUrl }" class="btn btn-primary btn-xs" role="button">Editar</a> <a href="${eliminarUrl }" class="btn btn-danger btn-xs" role="button">Eliminar</a></p>
				      </sec:authorize>
				    </c:if>
		      </div>
		    </div>
		  </div>
		  </c:forEach>
		</div>
		
	 </div>
	 
  <hr>
  <c:url value="/resources/js/main.js" var="PageJs" />
  <%@include file="/WEB-INF/views/components/footer.jsp" %>  
</body>
</html>