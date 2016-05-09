<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<footer>
  <p>&copy; Manitos 2016</p>
</footer>

<c:url value="/resources/js/vendor/jquery-1.11.2.min.js" var="jqueryJs" />
<c:url value="/resources/js/vendor/bootstrap.js" var="bootstrapJs" />

<script src="${jqueryJs}"></script>
<script src="${bootstrapJs}"></script>
<script src="${PageJs}"></script>
