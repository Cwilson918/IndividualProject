<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<html class="full" xmlns="http://www.w3.org/1999/xhtml">
<c:set var="pageTitle" value="Home" scope="request"/>

<c:import url="head-tag.jsp" />

<body>

<c:import url="navigation_bar.jsp" />

<div class="container">
    <h2>List of Available Players</h2>

    <!-- Search Form -->
    <form method="get" action="/playerSearch">
        <fieldset>
            <legend>Search Players</legend>

            <!-- Search Input -->
            <div class="row form-group">
                <div class="col-md-9">
                    <input id="playerSearch" name="playerSearch" type="text"
                           placeholder="" class="form-control input-md">
                </div>
            </div>

            <!-- Search Button -->
            <div class="row form-group">
                <div class="col-md-9"></div>
                <div class="col-md-3">
                    <button id="searchPlayersBtn" name="searchPlayersBtn" class="btn">Search</button>
                </div>
            </div>
        </fieldset>
    </form>
    <div class="col-md-9" id="foundPlayersContainer">
        <h2>Found Players</h2>
    <c:forEach var="foundPlayer" items="${foundPlayers}">
        <li>${foundPlayer.fullName} - ${foundPlayer.team}</li>
    </c:forEach>
    </div>
    <div class="col-md-9">
    <c:forEach var="individualPlayer" items="${allPlayers}">
        <ul>${individualPlayer.fullName}</ul>
    </c:forEach>
    </div>
</div>

</body>
</html>
