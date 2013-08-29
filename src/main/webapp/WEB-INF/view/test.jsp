<%--
  Created by IntelliJ IDEA.
  User: nzhu
  Date: 29/08/13
  Time: 4:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <!-- required styles -->
  		<link href="library/assets/css/bootstrap.css" rel="stylesheet" />
  		<link href="library/assets/css/bootstrap-responsive.css" rel="stylesheet" />
  		<link href="library/css/styles.css" rel="stylesheet" />

  		<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
  		<!--[if lt IE 9]>
  		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  		<![endif]-->
  	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
</head>
<body>
    <div class="well widget">
        <div class="widget-header">
            <h3 class="title">Horizontal Form</h3>
        </div>
        <form class="form-horizontal">
            <div class="control-group">
                <label for="inputEmail" class="control-label">Email</label>
                <div class="controls">
                    <input type="text" placeholder="Email" id="inputEmail">
                </div>
            </div>
            <div class="control-group">
                <label for="inputPassword" class="control-label">Password</label>
                <div class="controls">
                    <input type="password" placeholder="Password" id="inputPassword">
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                <label class="checkbox">
                    <div class="checker" id="uniform-undefined"><span><input type="checkbox" class="fancy" style="opacity: 0;"></span></div> Remember me
                </label>
                <button class="btn btn-warning" type="submit">Sign in</button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>