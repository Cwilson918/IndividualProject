<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html class="full" xmlns="http://www.w3.org/1999/xhtml">
<c:set var="pageTitle" value="Home" scope="session"/>

<c:import url="head-tag.jsp" />
<body>

<div class="container">
    <div class="col-lg-4"></div>
    <div class="col-lg-4">
        <h1 class="topOfPageTitle">Fantasy Draft Tool</h1>
    </div>
    <div class="col-lg-4"></div>
</div>

<c:import url="navigation_bar.jsp" />

<div class="container">
    <table>
    <c:forEach var="article" items="${allArticles}">
        <tr>
            <td>${article.title}</td>
            <td><a href="${article.url}" /></td>
            <td>${article.description}</td>
        </tr>
    </c:forEach>
    </table>
</div>

</body>
</html>
