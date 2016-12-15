<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html class="full" xmlns="http://www.w3.org/1999/xhtml">
<c:set var="pageTitle" value="Home" scope="request"/>

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

    <!-- Player Search Container -->
    <div class="row" id="playerSearchRow">
        <!-- Search Form -->
        <form>
            <fieldset>
                <legend>Search Players</legend>

                <!-- Search Input -->
                <div class="row form-group">
                    <div class="col-lg-4">
                        <input id="inputPlayerSearch" name="inputPlayerSearch" type="text"
                               placeholder="" class="form-control input-lg">
                    </div>
                    <div class="col-lg-1">
                        <button type="button" id="searchPlayersBtn" class="btn">Search</button>
                    </div>
                    <div class="col-lg-7">
                        <button type="button" id="removeLastPlayerBtn" class="btn">Remove Last Draft Pick</button>
                    </div>
                </div>
            </fieldset>
        </form>
        <div class="col-lg-12" id="noPlayersFoundContainer">
            <h3>No Players Found</h3>
        </div>

        <div class="col-md-9" id="foundPlayersContainer">
            <h2>Found Players</h2>
            <div class="col-lg-12" id="playerScrollingTable">
            <table id="foundPlayersTable" class="table table-striped">
                <thead>
                <tr><th>Full Name</th><th>Team</th><th>Position</th><th>Add?</th></tr>
                </thead>
                <tbody id="foundPlayersTableBody">

                </tbody>
            </table>
            </div>
        </div>
    </div>

    <!-- Draftbox Container -->
    <div class="row">
    <div class="container" id="draftboxContainer">
        <table class="table table-bordered" id="draftboxTable">
            <thead>
                <tr id="draftboxTableHead">
                    <td class="draftboxCell">Team 1</td>
                    <td class="draftboxCell">Team 2</td>
                    <td class="draftboxCell">Team 3</td>
                    <td class="draftboxCell">Team 4</td>
                    <td class="draftboxCell">Team 5</td>
                    <td class="draftboxCell">Team 6</td>
                    <td class="draftboxCell">Team 7</td>
                    <td class="draftboxCell">Team 8</td>
                    <td class="draftboxCell">Team 9</td>
                    <td class="draftboxCell">Team 10</td>
                    <td class="draftboxCell">Team 11</td>
                    <td class="draftboxCell">Team 12</td>
                </tr>
            </thead>
                <!-- Row One of Draftbox -->
                <tr class="draftboxRow" id="draftboxRowOne">
                    <td class="draftboxCell" id="draftboxR1C1">1.1</td>
                    <td class="draftboxCell" id="draftboxR1C2">1.2</td>
                    <td class="draftboxCell" id="draftboxR1C3">1.3</td>
                    <td class="draftboxCell" id="draftboxR1C4">1.4</td>
                    <td class="draftboxCell" id="draftboxR1C5">1.5</td>
                    <td class="draftboxCell" id="draftboxR1C6">1.6</td>
                    <td class="draftboxCell" id="draftboxR1C7">1.7</td>
                    <td class="draftboxCell" id="draftboxR1C8">1.8</td>
                    <td class="draftboxCell" id="draftboxR1C9">1.9</td>
                    <td class="draftboxCell" id="draftboxR1C10">1.10</td>
                    <td class="draftboxCell" id="draftboxR1C11">1.11</td>
                    <td class="draftboxCell" id="draftboxR1C12">1.12</td>
                </tr>

                <!-- Row two for draftbox -->
                <tr class="draftboxRow" id="draftboxRowTwo">
                    <td class="draftboxCell" id="draftboxR2C12">2.12</td>
                    <td class="draftboxCell" id="draftboxR2C11">2.11</td>
                    <td class="draftboxCell" id="draftboxR2C10">2.10</td>
                    <td class="draftboxCell" id="draftboxR2C9">2.9</td>
                    <td class="draftboxCell" id="draftboxR2C8">2.8</td>
                    <td class="draftboxCell" id="draftboxR2C7">2.7</td>
                    <td class="draftboxCell" id="draftboxR2C6">2.6</td>
                    <td class="draftboxCell" id="draftboxR2C5">2.5</td>
                    <td class="draftboxCell" id="draftboxR2C4">2.4</td>
                    <td class="draftboxCell" id="draftboxR2C3">2.3</td>
                    <td class="draftboxCell" id="draftboxR2C2">2.2</td>
                    <td class="draftboxCell" id="draftboxR2C1">2.1</td>
                </tr>

                <!-- Row three for draftbox -->
                <tr class="draftboxRow" id="draftboxRowThree">
                    <td class="draftboxCell" id="draftboxR3C1">3.1</td>
                    <td class="draftboxCell" id="draftboxR3C2">3.2</td>
                    <td class="draftboxCell" id="draftboxR3C3">3.3</td>
                    <td class="draftboxCell" id="draftboxR3C4">3.4</td>
                    <td class="draftboxCell" id="draftboxR3C5">3.5</td>
                    <td class="draftboxCell" id="draftboxR3C6">3.6</td>
                    <td class="draftboxCell" id="draftboxR3C7">3.7</td>
                    <td class="draftboxCell" id="draftboxR3C8">3.8</td>
                    <td class="draftboxCell" id="draftboxR3C9">3.9</td>
                    <td class="draftboxCell" id="draftboxR3C10">3.10</td>
                    <td class="draftboxCell" id="draftboxR3C11">3.11</td>
                    <td class="draftboxCell" id="draftboxR3C12">3.12</td>
                </tr>

                <!-- Row four for draftbox -->
                <tr class="draftboxRow" id="draftboxRowFour">
                    <td class="draftboxCell" id="draftboxR4C12">4.12</td>
                    <td class="draftboxCell" id="draftboxR4C11">4.11</td>
                    <td class="draftboxCell" id="draftboxR4C10">4.10</td>
                    <td class="draftboxCell" id="draftboxR4C9">4.9</td>
                    <td class="draftboxCell" id="draftboxR4C8">4.8</td>
                    <td class="draftboxCell" id="draftboxR4C7">4.7</td>
                    <td class="draftboxCell" id="draftboxR4C6">4.6</td>
                    <td class="draftboxCell" id="draftboxR4C5">4.5</td>
                    <td class="draftboxCell" id="draftboxR4C4">4.4</td>
                    <td class="draftboxCell" id="draftboxR4C3">4.3</td>
                    <td class="draftboxCell" id="draftboxR4C2">4.2</td>
                    <td class="draftboxCell" id="draftboxR4C1">4.1</td>
                </tr>

                <!-- Row five for draftbox -->
                <tr class="draftboxRow" id="draftboxRowFive">
                    <td class="draftboxCell" id="draftboxR5C1">5.1</td>
                    <td class="draftboxCell" id="draftboxR5C2">5.2</td>
                    <td class="draftboxCell" id="draftboxR5C3">5.3</td>
                    <td class="draftboxCell" id="draftboxR5C4">5.4</td>
                    <td class="draftboxCell" id="draftboxR5C5">5.5</td>
                    <td class="draftboxCell" id="draftboxR5C6">5.6</td>
                    <td class="draftboxCell" id="draftboxR5C7">5.7</td>
                    <td class="draftboxCell" id="draftboxR5C8">5.8</td>
                    <td class="draftboxCell" id="draftboxR5C9">5.9</td>
                    <td class="draftboxCell" id="draftboxR5C10">5.10</td>
                    <td class="draftboxCell" id="draftboxR5C11">5.11</td>
                    <td class="draftboxCell" id="draftboxR5C12">5.12</td>
                </tr>

                <!-- Row six for draftbox -->
                <tr class="draftboxRow" id="draftboxRowSix">
                    <td class="draftboxCell" id="draftboxR6C12">6.12</td>
                    <td class="draftboxCell" id="draftboxR6C11">6.11</td>
                    <td class="draftboxCell" id="draftboxR6C10">6.10</td>
                    <td class="draftboxCell" id="draftboxR6C9">6.9</td>
                    <td class="draftboxCell" id="draftboxR6C8">6.8</td>
                    <td class="draftboxCell" id="draftboxR6C7">6.7</td>
                    <td class="draftboxCell" id="draftboxR6C6">6.6</td>
                    <td class="draftboxCell" id="draftboxR6C5">6.5</td>
                    <td class="draftboxCell" id="draftboxR6C4">6.4</td>
                    <td class="draftboxCell" id="draftboxR6C3">6.3</td>
                    <td class="draftboxCell" id="draftboxR6C2">6.2</td>
                    <td class="draftboxCell" id="draftboxR6C1">6.1</td>
                </tr>

                <!-- Row seven for draftbox -->
                <tr class="draftboxRow" id="draftboxRowSeven">
                    <td class="draftboxCell" id="draftboxR7C1">7.1</td>
                    <td class="draftboxCell" id="draftboxR7C2">7.2</td>
                    <td class="draftboxCell" id="draftboxR7C3">7.3</td>
                    <td class="draftboxCell" id="draftboxR7C4">7.4</td>
                    <td class="draftboxCell" id="draftboxR7C5">7.5</td>
                    <td class="draftboxCell" id="draftboxR7C6">7.6</td>
                    <td class="draftboxCell" id="draftboxR7C7">7.7</td>
                    <td class="draftboxCell" id="draftboxR7C8">7.8</td>
                    <td class="draftboxCell" id="draftboxR7C9">7.9</td>
                    <td class="draftboxCell" id="draftboxR7C10">7.10</td>
                    <td class="draftboxCell" id="draftboxR7C11">7.11</td>
                    <td class="draftboxCell" id="draftboxR7C12">7.12</td>
                </tr>

                <!-- Row eight for draftbox -->
                <tr class="draftboxRow" id="draftboxRowEight">
                    <td class="draftboxCell" id="draftboxR8C12">8.12</td>
                    <td class="draftboxCell" id="draftboxR8C11">8.11</td>
                    <td class="draftboxCell" id="draftboxR8C10">8.10</td>
                    <td class="draftboxCell" id="draftboxR8C9">8.9</td>
                    <td class="draftboxCell" id="draftboxR8C8">8.8</td>
                    <td class="draftboxCell" id="draftboxR8C7">8.7</td>
                    <td class="draftboxCell" id="draftboxR8C6">8.6</td>
                    <td class="draftboxCell" id="draftboxR8C5">8.5</td>
                    <td class="draftboxCell" id="draftboxR8C4">8.4</td>
                    <td class="draftboxCell" id="draftboxR8C3">8.3</td>
                    <td class="draftboxCell" id="draftboxR8C2">8.2</td>
                    <td class="draftboxCell" id="draftboxR8C1">8.1</td>
                </tr>

                <!-- Row nine for draftbox -->
                <tr class="draftboxRow" id="draftboxRowNine">
                    <td class="draftboxCell" id="draftboxR9C1">9.1</td>
                    <td class="draftboxCell" id="draftboxR9C2">9.2</td>
                    <td class="draftboxCell" id="draftboxR9C3">9.3</td>
                    <td class="draftboxCell" id="draftboxR9C4">9.4</td>
                    <td class="draftboxCell" id="draftboxR9C5">9.5</td>
                    <td class="draftboxCell" id="draftboxR9C6">9.6</td>
                    <td class="draftboxCell" id="draftboxR9C7">9.7</td>
                    <td class="draftboxCell" id="draftboxR9C8">9.8</td>
                    <td class="draftboxCell" id="draftboxR9C9">9.9</td>
                    <td class="draftboxCell" id="draftboxR9C10">9.10</td>
                    <td class="draftboxCell" id="draftboxR9C11">9.11</td>
                    <td class="draftboxCell" id="draftboxR9C12">9.12</td>
                </tr>

                <!-- Row ten for draftbox -->
                <tr class="draftboxRow" id="draftboxRowTen">
                    <td class="draftboxCell" id="draftboxR10C12">10.12</td>
                    <td class="draftboxCell" id="draftboxR10C11">10.11</td>
                    <td class="draftboxCell" id="draftboxR10C10">10.10</td>
                    <td class="draftboxCell" id="draftboxR10C9">10.9</td>
                    <td class="draftboxCell" id="draftboxR10C8">10.8</td>
                    <td class="draftboxCell" id="draftboxR10C7">10.7</td>
                    <td class="draftboxCell" id="draftboxR10C6">10.6</td>
                    <td class="draftboxCell" id="draftboxR10C5">10.5</td>
                    <td class="draftboxCell" id="draftboxR10C4">10.4</td>
                    <td class="draftboxCell" id="draftboxR10C3">10.3</td>
                    <td class="draftboxCell" id="draftboxR10C2">10.2</td>
                    <td class="draftboxCell" id="draftboxR10C1">10.1</td>
                </tr>

                <!-- Row eleven for draftbox -->
                <tr class="draftboxRow" id="draftboxRowEleven">
                    <td class="draftboxCell" id="draftboxR11C1">11.1</td>
                    <td class="draftboxCell" id="draftboxR11C2">11.2</td>
                    <td class="draftboxCell" id="draftboxR11C3">11.3</td>
                    <td class="draftboxCell" id="draftboxR11C4">11.4</td>
                    <td class="draftboxCell" id="draftboxR11C5">11.5</td>
                    <td class="draftboxCell" id="draftboxR11C6">11.6</td>
                    <td class="draftboxCell" id="draftboxR11C7">11.7</td>
                    <td class="draftboxCell" id="draftboxR11C8">11.8</td>
                    <td class="draftboxCell" id="draftboxR11C9">11.9</td>
                    <td class="draftboxCell" id="draftboxR11C10">11.10</td>
                    <td class="draftboxCell" id="draftboxR11C11">11.11</td>
                    <td class="draftboxCell" id="draftboxR11C12">11.12</td>
                </tr>

                <!-- Row twelve for draftbox -->
                <tr class="draftboxRow" id="draftboxRowTwelve">
                    <td class="draftboxCell" id="draftboxR12C12">12.12</td>
                    <td class="draftboxCell" id="draftboxR12C11">12.11</td>
                    <td class="draftboxCell" id="draftboxR12C10">12.10</td>
                    <td class="draftboxCell" id="draftboxR12C9">12.9</td>
                    <td class="draftboxCell" id="draftboxR12C8">12.8</td>
                    <td class="draftboxCell" id="draftboxR12C7">12.7</td>
                    <td class="draftboxCell" id="draftboxR12C6">12.6</td>
                    <td class="draftboxCell" id="draftboxR12C5">12.5</td>
                    <td class="draftboxCell" id="draftboxR12C4">12.4</td>
                    <td class="draftboxCell" id="draftboxR12C3">12.3</td>
                    <td class="draftboxCell" id="draftboxR12C2">12.2</td>
                    <td class="draftboxCell" id="draftboxR12C1">12.1</td>
                </tr>

                <!-- Row thirteen for draftbox -->
                <tr class="draftboxRow" id="draftboxRowThirteen">
                    <td class="draftboxCell" id="draftboxR13C1">13.1</td>
                    <td class="draftboxCell" id="draftboxR13C2">13.2</td>
                    <td class="draftboxCell" id="draftboxR13C3">13.3</td>
                    <td class="draftboxCell" id="draftboxR13C4">13.4</td>
                    <td class="draftboxCell" id="draftboxR13C5">13.5</td>
                    <td class="draftboxCell" id="draftboxR13C6">13.6</td>
                    <td class="draftboxCell" id="draftboxR13C7">13.7</td>
                    <td class="draftboxCell" id="draftboxR13C8">13.8</td>
                    <td class="draftboxCell" id="draftboxR13C9">13.9</td>
                    <td class="draftboxCell" id="draftboxR13C10">13.10</td>
                    <td class="draftboxCell" id="draftboxR13C11">13.11</td>
                    <td class="draftboxCell" id="draftboxR13C12">13.12</td>
                </tr>

                <!-- Row fourteen for draftbox -->
                <tr class="draftboxRow" id="draftboxRowFourteen">
                    <td class="draftboxCell" id="draftboxR14C12">14.12</td>
                    <td class="draftboxCell" id="draftboxR14C11">14.11</td>
                    <td class="draftboxCell" id="draftboxR14C10">14.10</td>
                    <td class="draftboxCell" id="draftboxR14C9">14.9</td>
                    <td class="draftboxCell" id="draftboxR14C8">14.8</td>
                    <td class="draftboxCell" id="draftboxR14C7">14.7</td>
                    <td class="draftboxCell" id="draftboxR14C6">14.6</td>
                    <td class="draftboxCell" id="draftboxR14C5">14.5</td>
                    <td class="draftboxCell" id="draftboxR14C4">14.4</td>
                    <td class="draftboxCell" id="draftboxR14C3">14.3</td>
                    <td class="draftboxCell" id="draftboxR14C2">14.2</td>
                    <td class="draftboxCell" id="draftboxR14C1">14.1</td>
                </tr>

                <!-- Row fifteen for draftbox -->
                <tr class="draftboxRow" id="draftboxRowFifteen">
                    <td class="draftboxCell" id="draftboxR15C1">15.1</td>
                    <td class="draftboxCell" id="draftboxR15C2">15.2</td>
                    <td class="draftboxCell" id="draftboxR15C3">15.3</td>
                    <td class="draftboxCell" id="draftboxR15C4">15.4</td>
                    <td class="draftboxCell" id="draftboxR15C5">15.5</td>
                    <td class="draftboxCell" id="draftboxR15C6">15.6</td>
                    <td class="draftboxCell" id="draftboxR15C7">15.7</td>
                    <td class="draftboxCell" id="draftboxR15C8">15.8</td>
                    <td class="draftboxCell" id="draftboxR15C9">15.9</td>
                    <td class="draftboxCell" id="draftboxR15C10">15.10</td>
                    <td class="draftboxCell" id="draftboxR15C11">15.11</td>
                    <td class="draftboxCell" id="draftboxR15C12">15.12</td>
                </tr>
            <tbody id="draftboxTableBody">

            </tbody>
        </table>
    </div>
    </div>

</div>

</body>
</html>
