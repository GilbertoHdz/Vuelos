<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Viajes</title>
</head>
<body>
  <h1>Lista de Usuarios</h1>
  <c:url value="/viaje/add" var="addUsuarioUrl"></c:url>
  <a href="${addUsuarioUrl }">Agregar</a>
  
  <table>
    <thead>
      <th>NOMBRE</th>
      <th>FOTO</th>
      <th>DESCRIPCION</th>
      <th>CUPO_MAXIMO</th>
      <th>DISPONIBILIDAD</th>
      <th>FECHA_INCIO</th>
      <th>FECHA_FIN</th>
      <th>PRECIO</th>
      <th>ORIGEN</th>
      <th colspan="2">Opciones</th>
    </thead>
    <tbody>
      <c:forEach var="v" items="${viajes }">
        <tr>
          <td>${v.nombre }</td>
          <td>${v.foto }</td>
          <td>${v.descripcion }</td>
          <td>${v.cupoMaximo }</td>
          <td>${v.disponibilidad }</td>
          <td>${v.fechaInicio }</td>
          <td>${v.fechaFin }</td>
          <td>${v.precio }</td>
          <td>${v.origen }</td>
          <td>
            <c:url value="/viaje/update/${v.id }" var="editarUrl"/>
            <a href="${editarUrl }">Editar</a>
          </td>
          <td>
            <c:url value="/viaje/delete/${v.id }" var="eliminarUrl"/>
            <a href="${eliminarUrl }">Eliminar</a>
          </td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</body>
</html>