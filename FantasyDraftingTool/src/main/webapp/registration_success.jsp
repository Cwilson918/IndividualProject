<%--
  Created by IntelliJ IDEA.
  User: craigwilson
  Date: 10/19/16
  Time: 3:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pageTitle" value="Home" scope="session"/>
<html class="full" xmlns="http://www.w3.org/1999/xhtml">

    <c:import url="head-tag.jsp" />

<body>

<c:import url="navigation_bar.jsp" />

    <div class="container">
        <div class="col-lg-5"></div>
        <div class="col-lg-2">
            <h3>Success!</h3>
            <p>Your account has been successfully created.</p>
        </div>
        <div class="col-lg-5"></div>
    </div>
</body>
</html>

