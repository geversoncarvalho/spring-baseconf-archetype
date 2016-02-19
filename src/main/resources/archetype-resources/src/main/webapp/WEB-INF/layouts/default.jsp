<!DOCTYPE html>
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<c:url var="resources" value="resources" />
<head>
    <title>Welcome to the Spring MVC Quickstart application! Get started quickly by signing up!</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link href="${resources}/css/bootstrap.min.css" rel="stylesheet" media="screen" />
    <link href="${resources}/css/core.css" rel="stylesheet" media="screen" />
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="${resources}/js/bootstrap.min.js"></script>
</head>
<body>
<tiles:insertAttribute name="header" />
<div class="container">
    <tiles:insertAttribute name="body" />
    <tiles:insertAttribute name="footer" />
</div>
</body>
</html>