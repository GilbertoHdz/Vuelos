<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<meta charset="utf-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<c:url value="/resources/css/bootstrap.css" var="bootstrapCss"/>
<c:url value="/resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js" var="modernizrJs" />

<link rel="stylesheet" href="${bootstrapCss}">
<style>
  body {
    padding-top: 50px;
    padding-bottom: 20px;
  }
</style>

<link rel="stylesheet" href="${pageCss}" />
<script src="${modernizrJs}"></script>

