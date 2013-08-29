<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title><decorator:title /></title>
        <decorator:head />
        <%@ include file="/WEB-INF/view/includes/login/preload.jsp" %>
    </head>
    <body>

        <!-- content -->
        <div id="left_layout">
            <!-- main content -->
            <div id="main_content" class="container-fluid">
                <decorator:body />
            </div>
        </div>
        <!-- navigator -->

        <div id="footer">
            <%@ include file="/WEB-INF/view/includes/footer.jsp" %>
        </div>

    </body>
</html>
