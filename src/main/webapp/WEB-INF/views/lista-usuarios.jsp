<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Usuario</title>
</head>
<body>
  <h1>Lista de Usuarios</h1>
  <c:url value="/usuario/add" var="addUsuarioUrl"></c:url>
  <a href="${addUsuarioUrl }">Agregar</a>
  
  <table>
    <thead>
      <th>Nombre</th>
      <th>Direccion</th>
      <th>Ciudad</th>
      <th>Pais</th>
      <th>Edad</th>
      <th>Telefono</th>
      <th>Email</th>
      <th>Usuario</th>
      <th>Rol</th>
      <th colspan="2">Opciones</th>
    </thead>
    <tbody>
      <c:forEach var="u" items="${usuarios }">
        <tr>
          <td>${u.nombre }</td>
          <td>${u.direccion }</td>
          <td>${u.ciudad }</td>
          <td>${u.pais }</td>
          <td>${u.edad }</td>
          <td>${u.telefono }</td>
          <td>${u.email }</td>
          <td>${u.usuario }</td>
          <td>${u.rol }</td>
          <td>
            <c:url value="/usuario/update/${u.id }" var="editarUrl"/>
            <a href="${editarUrl }">Editar</a>
          </td>
          <td>
            <c:url value="/usuario/delete/${u.id }" var="eliminarUrl"/>
            <a href="${eliminarUrl }">Eliminar</a>
          </td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</body>
</html>