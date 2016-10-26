<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html class="full" xmlns="http://www.w3.org/1999/xhtml">
<c:set var="pageTitle" value="Sign-In" scope="request" />

<c:import url="head-tag.jsp" />

<body>

<c:import url="navigation_bar.jsp" />

<div class="container">
    <div class="col-lg-4"></div>
    <div class="col-lg-4">
    <form action="j_security_check" method="post">
    <fieldset>

        <legend>Sign In</legend>

        <!-- Username -->
        <div class="row form-group">
            <label class="col-md-3 control-label" for="signInUsername">Username:</label>
            <div class="col-md-9">
                <input id="signInUsername" name="j_username" type="text"
                       placeholder="Username" class="form-control input-md">
            </div>
        </div>

        <!-- Password -->
        <div class="row form-group">
            <label class="col-md-3 control-label" for="signInPassword">Password:</label>
            <div class="col-md-9">
                <input id="signInPassword" name="j_password" type="password"
                       placeholder="Password" class="form-control input-md">
            </div>
        </div>

        <!-- Form Button -->
        <div class="row form-group">
            <div class="col-md-9"></div>
            <div class="col-md-3">
                <button id="signInSubmitBtn" name="signInSubmitBtn" class="btn">Submit</button>
            </div>
        </div>

    </fieldset>
    </form>
    </div>
    <div class="col-lg-4"></div>
</div>
<!--
    <div class="container">
<h2>Sign in</h2>
<form>
    <div class="row">
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" class="form-control" id="username">
        </div>
    </div>
    <div class="row">
    <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" class="form-control" id="password">
    </div>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
</form>
</div>
-->
</body>
</html>
