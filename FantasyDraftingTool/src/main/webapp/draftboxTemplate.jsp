<%--
  Created by IntelliJ IDEA.
  User: craigwilson
  Date: 12/11/16
  Time: 10:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- Draftbox Heading -->
<div class="row">
    <div class="col-lg-3">Timer Here</div>
    <div class="col-lg-6">
        <h3>Team Drafting</h3><small>Team Drafting Next</small>
    </div>
    <div class="col-lg-3"></div>
</div>

<!-- Draftbox Row 1 -->
<div class="draftbox-row row" id="row1">
    <div class="draftbox-label col-lg-1">Round 1</div>
    <div class="col-lg-10">
        <div class="draftbox col-lg-1" id="r1c1"></div>
        <div class="draftbox col-lg-1" id="r1c2"></div>
        <div class="draftbox col-lg-1" id="r1c3"></div>
        <div class="draftbox col-lg-1" id="r1c4"></div>
        <div class="draftbox col-lg-1" id="r1c5"></div>
        <div class="draftbox col-lg-1" id="r1c6"></div>
        <div class="draftbox col-lg-1" id="r1c7"></div>
        <div class="draftbox col-lg-1" id="r1c8"></div>
        <div class="draftbox col-lg-1" id="r1c9"></div>
        <div class="draftbox col-lg-1" id="r1c10"></div>
        <div class="draftbox col-lg-1" id="r1c11"></div>
        <div class="draftbox col-lg-1" id="r1c12"></div>
    </div>
    <div class="col-lg-1"></div>
</div>

<!-- Draftbox Row 2 -->
<div class="draftbox-row row" id="row2">
    <div class="draftbox-label col-lg-1">Round 2</div>
    <div class="col-lg-10">
        <div class="draftbox col-lg-1" id="r2c1"></div>
        <div class="draftbox col-lg-1" id="r2c2"></div>
        <div class="draftbox col-lg-1" id="r2c3"></div>
        <div class="draftbox col-lg-1" id="r2c4"></div>
        <div class="draftbox col-lg-1" id="r2c5"></div>
        <div class="draftbox col-lg-1" id="r2c6"></div>
        <div class="draftbox col-lg-1" id="r2c7"></div>
        <div class="draftbox col-lg-1" id="r2c8"></div>
        <div class="draftbox col-lg-1" id="r2c9"></div>
        <div class="draftbox col-lg-1" id="r2c10"></div>
        <div class="draftbox col-lg-1" id="r2c11"></div>
        <div class="draftbox col-lg-1" id="r2c12"></div>
    </div>
    <div class="col-lg-1"></div>
</div>

<!-- Draftbox Row 3 -->
<div class="draftbox-row row">
    <div class="draftbox-label col-lg-1">Round 3</div>
    <div class="col-lg-10">
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
    </div>
    <div class="col-lg-1"></div>
</div>

<!-- Draftbox Row 4 -->
<div class="draftbox-row row">
    <div class="draftbox-label col-lg-1">Round 4</div>
    <div class="col-lg-10">
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
    </div>
    <div class="col-lg-1"></div>
</div>

<!-- Draftbox Row 5 -->
<div class="draftbox-row row">
    <div class="draftbox-label col-lg-1">Round 5</div>
    <div class="col-lg-10">
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
    </div>
    <div class="col-lg-1"></div>
</div>

<!-- Draftbox Row 6 -->
<div class="draftbox-row row">
    <div class="draftbox-label col-lg-1">Round 6</div>
    <div class="col-lg-10">
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
    </div>
    <div class="col-lg-1"></div>
</div>

<!-- Draftbox Row 7 -->
<div class="draftbox-row row">
    <div class="draftbox-label col-lg-1">Round 7</div>
    <div class="col-lg-10">
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
    </div>
    <div class="col-lg-1"></div>
</div>

<!-- Draftbox Row 8 -->
<div class="draftbox-row row">
    <div class="draftbox-label col-lg-1">Round 8</div>
    <div class="col-lg-10">
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
    </div>
    <div class="col-lg-1"></div>
</div>

<!-- Draftbox Row 9 -->
<div class="draftbox-row row">
    <div class="draftbox-label col-lg-1">Round 9</div>
    <div class="col-lg-10">
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
    </div>
    <div class="col-lg-1"></div>
</div>

<!-- Draftbox Row 10 -->
<div class="draftbox-row row">
    <div class="draftbox-label col-lg-1">Round 10</div>
    <div class="col-lg-10">
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
    </div>
    <div class="col-lg-1"></div>
</div>

<!-- Draftbox Row 11 -->
<div class="draftbox-row row">
    <div class="draftbox-label col-lg-1">Round 11</div>
    <div class="col-lg-10">
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
    </div>
    <div class="col-lg-1"></div>
</div>

<!-- Draftbox Row 12 -->
<div class="draftbox-row row">
    <div class="draftbox-label col-lg-1">Round 12</div>
    <div class="col-lg-10">
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
    </div>
    <div class="col-lg-1"></div>
</div>

<!-- Draftbox Row 13 -->
<div class="draftbox-row row">
    <div class="draftbox-label col-lg-1">Round 13</div>
    <div class="col-lg-10">
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
    </div>
    <div class="col-lg-1"></div>
</div>

<!-- Draftbox Row 14 -->
<div class="draftbox-row row">
    <div class="draftbox-label col-lg-1">Round 14</div>
    <div class="col-lg-10">
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
    </div>
    <div class="col-lg-1"></div>
</div>

<!-- Draftbox Row 15 -->
<div class="draftbox-row row">
    <div class="draftbox-label col-lg-1">Round 15</div>
    <div class="col-lg-10">
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
        <div class="draftbox col-lg-1"></div>
    </div>
    <div class="col-lg-1"></div>
</div>

</body>
</html>
