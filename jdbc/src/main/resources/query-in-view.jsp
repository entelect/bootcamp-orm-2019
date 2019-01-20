<%@ page language="java" pageEncoding="UTF-8" session="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Tutorial: Hello Dojo!</title>
    <!-- load Dojo -->
    <script src="http://ajax.googleapis.com/ajax/libs/dojo/1.6/dojo/dojo.xd.js"></script>
    <script>
        dojo.ready(function(){
            dojo.byId("greeting").innerHTML += ", from " + dojo.version;
        });
    </script>
</head>
<body>
<h1 id="greeting">Hello</h1>
</body>
</html>
