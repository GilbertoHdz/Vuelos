<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eliminar</title>
</head>
<body>

  <h1>Eliminar Viaje</h1>
  <p>¿Estas seguro que quieres eliminar este viaje?</p>
  
  <table>
    <tr>
      <th>Nombre:</th>
      <td>${v.nombre }</td>
    </tr>
    <tr>
      <th>Foto:</th>
      <td>${v.foto }</td>
    </tr>
    <tr>
      <th>Descripcion:</th>
      <td>${v.descripcion }</td>
    </tr>
    <tr>
      <th>Cupo Maximo:</th>
      <td>${v.cupoMaximo }</td>
    </tr>
    <tr>
      <th>Disponibilidad:</th>
      <td>${v.disponibilidad }</td>
    </tr>
    <tr>
      <th>Fecha Inicio:</th>
      <td>${v.fechaInicio }</td>
    </tr>
    <tr>
      <th>Fecha Fin:</th>
      <td>${v.fechaFin }</td>
    </tr>
    <tr>
      <th>Precio:</th>
      <td>${v.precio }</td>
    </tr>
    <tr>
      <th>Origen:</th>
      <td>${v.origen }</td>
    </tr>
  </table>
  
  <c:url value="/viaje/delete/${v.id}" var="deleteUrl"/>
  
  <form action="${deleteUrl }" method="post">
    <button type="submit">Eliminar</button>
    <c:url value="/viaje/list" var="cancelarUrl"/>
    <a href="${cancelarUrl }">Cancelar</a>
  </form>
  
</body>
</html>