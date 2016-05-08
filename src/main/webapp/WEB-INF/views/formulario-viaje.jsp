<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<form:form modelAttribute="viaje" action="${postUrl }" method="POST">
  <form:errors/>
  <br/>
  <form:label path="nombre">Nombre:</form:label>
	<form:input path="nombre"/>
	<form:errors path="nombre"></form:errors>
	<br/>
	<form:label path="foto">Foto</form:label>
	<form:input path="foto"/>
	<form:errors path="foto"></form:errors>
	<br/>
	<form:label path="descripcion">Descripcion:</form:label>
	<form:input path="descripcion"/>
	<form:errors path="descripcion"></form:errors>
	<br/>
	<form:label path="cupoMaximo">Cupo Maximo:</form:label>
	<form:input path="cupoMaximo"/>
	<form:errors path="cupoMaximo"></form:errors>
	<br/>
	<form:label path="disponibilidad">disponibilidad:</form:label>
	<form:input path="disponibilidad"/>
	<form:errors path="disponibilidad"></form:errors>
	<br/>
	<form:label path="fechaInicio">fecha Inicio:</form:label>
	<form:input path="fechaInicio"/>
	<form:errors path="fechaInicio"></form:errors>
	<br/>
	<form:label path="fechaFin">fecha Fin:</form:label>
	<form:input path="fechaFin"/>
	<form:errors path="fechaFin"></form:errors>
	<br/>
	<form:label path="precio">Precio :</form:label>
	<form:input path="precio"/>
	<form:errors path="precio"></form:errors>
	<br/>
	<form:label path="origen">Origen :</form:label>
	<form:input path="origen"/>
	<form:errors path="origen"></form:errors>

	<br/>
	<button type="submit">Guardar</button>

  <c:url value="/viaje/list" var="cancelarUrl"></c:url>
  <a href="${cancelarUrl }">Cancelar</a>
  
</form:form>
