<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html class="full" xmlns="http://www.w3.org/1999/xhtml">

<c:set var="pageTitle" value="Sign-Up" scope="request"/>

<c:import url="head-tag.jsp" />
<body>
<c:import url="navigation_bar.jsp" />

<div class="container">
    <div class="col-lg-4"></div>
    <div class="col-lg-4">
    <form id="createUserAccountForm" action="/userRegisterAction" method="POST">
        <fieldset>
            <legend>Create An Account</legend>

            <!-- First Name -->
            <div class="row form-group">
                <label class="col-md-3 control-label" for="createUserAccountFirstName">First Name:</label>
                <div class="col-md-9">
                    <input id="createUserAccountFirstName" name="createUserAccountFirstName" type="text"
                           placeholder="First Name" class="form-control input-md" required />
                </div>
            </div>

            <!-- Last Name -->
            <div class="row form-group">
                <label class="col-md-3 control-label" for="createUserAccountLastName">Last Name:</label>
                <div class="col-md-9">
                    <input id="createUserAccountLastName" name="createUserAccountLastName" type="text"
                           placeholder="Last Name" class="form-control input-md" required />
                </div>
            </div>

            <!-- Email -->
            <div class="row form-group">
                <label class="col-md-3 control-label" for="createUserAccountEmail">Email:</label>
                <div class="col-md-9">
                    <input id="createUserAccountEmail" name="createUserAccountEmail" type="text"
                           placeholder="Email" class="form-control input-md" required />
                </div>
            </div>

            <!-- Username -->
            <div class="row form-group">
                <label class="col-md-3 control-label" for="createUserUsername">Username:</label>
                <div class="col-md-9">
                    <input id="createUserUsername" name="createUserUsername" type="text"
                           placeholder="Username" class="form-control input-md" required />
                </div>
            </div>

            <!-- First Password -->
            <div class="row form-group">
                <label class="col-md-3 control-label" for="createUserAccountFirstPassword">Password:</label>
                <div class="col-md-9">
                    <input id="createUserAccountFirstPassword" name="createUserAccountFirstPassword" type="password"
                           placeholder="Password" class="form-control input-md" required />
                </div>
            </div>

            <!-- Repeated Password -->
            <div class="row form-group">
                <label class="col-md-3 control-label" for="createUserAccountSecondPassword">Repeat Password:</label>
                <div class="col-md-9">
                    <input id="createUserAccountSecondPassword" name="createUserAccountSecondPassword" type="password"
                           placeholder="Repeat Password" class="form-control input-md" required />
                </div>
            </div>

            <!-- Form Button -->
            <div class="row form-group">
                <div class="col-md-9"></div>
                <div class="col-md-3">
                    <button id="createUserAccountSubmitBtn" name="createUserAccountSubmitBtn" class="btn">Submit</button>
                </div>
            </div>
        </fieldset>
    </form>
    </div>
    <div class="col-lg-4"></div>
</div>

<!--

<div class="container">
<h2>Create a new account</h2>
<form>
    <div class="row">
        <div class="form-group">
            <label for="firstName">First Name:</label>
            <input type="text" class="form-control" id="firstName">
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label for="lastName">Last Name:</label>
            <input type="text" class="form-control" id="lastName">
        </div>
        </div>
    <div class="row">
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="text" class="form-control" id="email">
        </div>
        </div>
    <div class="row">
        <div class="form-control">
            <label for="passwordOne">Password:</label>
            <input type="password" class="form-control" id="passwordOne">
        </div>
        </div>
    <div class="row">
        <div class="form-control">
            <label for="passwordTwo">Repeat Password:</label>
            <input type="password" class="form-control" id="passwordTwo">
        </div>
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
</form>
</div>

-->
</body>
</html>
