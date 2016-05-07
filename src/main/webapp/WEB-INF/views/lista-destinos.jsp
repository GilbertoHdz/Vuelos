<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Destinos</title>
</head>
<body>
  <h1>Lista de Destinos</h1>
  <c:url value="" var="addDestinoUrl"></c:url>
  <a href="${addDestinoUrl }"></a>
  
  <table>
    <thead>
      <th>Pais</th>
      <th>Ciudad</th>
      <th>Clima</th>
    </thead>
    <tbody>
      <c:forEach var="d" items="${destinos }">
        <tr>
          <td>${d.pais }</td>
          <td>${d.ciudad }</td>
          <td>${d.clima }</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
  
</body>
</html>