<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
<form:form modelAttribute="usuario" action="${postUrl }" method="POST">
  <form:errors/>
  <br/>
  <form:label path="nombre">nombre :</form:label>
  <form:input path="nombre"/>
  <form:errors path="nombre"></form:errors>
  <br/>
  <form:label path="direccion">direccion :</form:label>
  <form:input path="direccion"/>
  <form:errors path="direccion"></form:errors>
  <br/>
  <form:label path="ciudad"> ciudad:</form:label>
  <form:input path="ciudad"/>
  <form:errors path="ciudad"></form:errors>
  <br/>
  <form:label path="pais"> pais:</form:label>
  <form:input path="pais"/>
  <form:errors path="pais"></form:errors>
  <br/>
  <form:label path="edad"> edad:</form:label>
  <form:input path="edad"/>
  <form:errors path="edad"></form:errors>
  <br/>
  <form:label path="telefono"> telefono:</form:label>
  <form:input path="telefono"/>
  <form:errors path="telefono"></form:errors>
  <br/>
  <form:label path="email">email :</form:label>
  <form:input path="email"/>
  <form:errors path="email"></form:errors>
  <br/>
  <form:label path="usuario">nombre usuario:</form:label>
  <form:input path="usuario"/>
  <form:errors path="usuario"></form:errors>
  <br/>
  <form:label path="rol"> Tipo:</form:label>
  <form:input path="rol"/>
  <form:errors path="rol"></form:errors>
  <br/>
  <form:label path="password"> password:</form:label>
  <form:input path="password"/>
  <form:errors path="password"></form:errors>
  <br/>
  <button type="submit">Guardar</button>
  <br/>
  <c:url value="/usuario/list" var="cancelarUrl"></c:url>
  <a href="${cancelarUrl }">Cancelar</a>
</form:form>