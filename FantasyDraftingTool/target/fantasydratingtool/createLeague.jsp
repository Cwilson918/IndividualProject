<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html class="full" xmlns="http://www.w3.org/1999/xhtml">
<c:set var="pageTitle" value="Create League" scope="request"/>

<c:import url="head-tag.jsp" />
<body>

<c:import url="navigation_bar.jsp" />
<div class="container" id="createLeagueForm">
    <h2>Create a League</h2>

    <form>
        <div class="form-group">
            <label for="leagueName">League Name:</label>
            <input type="text" class="form-control" id="leagueName">
        </div>
        <div class="form-group">
            <label for="numberOfTeams">Number of Teams:</label>
            <input type="text" class="form-control" id="numberOfTeams">
        </div>
        <div class="form-group">
            <label for="rosterSize">Roster Size:</label>
            <input type="text" class="form-control" id="rosterSize">
        </div>
    </form>

</div>


</body>
</html>
