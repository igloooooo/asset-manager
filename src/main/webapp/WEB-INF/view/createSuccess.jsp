<%--
    Copyright (C) 2010-2012 Taylor Leese (tleese22@gmail.com)

    This file is part of jappstart.

    jappstart is free software: you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    jappstart is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public License
    along with jappstart.  If not, see <http://www.gnu.org/licenses/>.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
    <head>
        <title><spring:message code="createSuccess.title" /></title>
        <link rel="stylesheet" href="/css/jquery-ui.css" />
        <link rel="stylesheet" href="/css/primeui-0.9.6-min.css" />
        <link rel="stylesheet" href="/css/theme.css" />
        <script type="text/javascript" src="/js/json2.js"></script>
        <script type="text/javascript" src="${pageContext.request.scheme}://www.google.com/jsapi?key=<c:choose><c:when test="${pageContext.request.scheme == 'http'}">${initParam.jsapiHttpKey}</c:when><c:otherwise>${initParam.jsapiHttpsKey}</c:otherwise></c:choose>"></script>
        <script src="http://code.jquery.com/jquery-${initParam.jQueryVersion}.min.js"></script>
        <script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js"></script>
        <script type="text/javascript" src="/js/primeui-0.9.6-min.js"></script>
    </head>
    <body>
        <h2><spring:message code="createSuccess.header" /></h2>
        <p><spring:message code="createSuccess.info" /></p>
    </body>
</html>
