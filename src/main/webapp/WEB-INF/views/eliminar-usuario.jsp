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

  <h1>Eliminar Usuario</h1>
  <p>¿Estas seguro que quieres eliminar este usuario?</p>
  
  <table>
    <tr>
      <th>Nombre:</th>
      <td>${u.nombre }</td>
    </tr>
    <tr>
      <th>Direccion:</th>
      <td>${u.direccion }</td>
    </tr>
    <tr>
      <th>Ciudad:</th>
      <td>${u.ciudad }</td>
    </tr>
    <tr>
      <th>Pais:</th>
      <td>${u.pais }</td>
    </tr>
    <tr>
      <th>Edad:</th>
      <td>${u.edad }</td>
    </tr>
    <tr>
      <th>Telefono:</th>
      <td>${u.telefono }</td>
    </tr>
    <tr>
      <th>Email:</th>
      <td>${u.email }</td>
    </tr>
    <tr>
      <th>Usuario:</th>
      <td>${u.usuario }</td>
    </tr>
    <tr>
      <th>Rol:</th>
      <td>${u.rol }</td>
    </tr>
  </table>
  
  <c:url value="/usuario/delete/${u.id}" var="deleteUrl"/>
  
  <form action="${deleteUrl }" method="post" >
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <button type="submit">Eliminar</button>
    <c:url value="/usuario/list" var="cancelarUrl"/>
    <a href="${cancelarUrl }">Cancelar</a>
  </form>
  
</body>
</html>