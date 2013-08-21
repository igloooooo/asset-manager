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
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
    <head>
        <title><spring:message code="login.title" /></title>
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
        <sec:authorize access="isAnonymous()">
            <fieldset id="login_fieldset" style="margin-bottom:20px">
                <legend><spring:message code="login.header"/></legend>

                <c:if test="${not empty error}">
                    <p><spring:message code="login.error"/></p>
                </c:if>

                <p id="userWarning" class="error" style="display:none"><spring:message code="login.nouser"/></p>

                <form action="/login/submit" method="post">
                    <table>
                        <tr>
                            <td><spring:message code="login.label.username"/></td>
                            <td><input id="username" type="text" name="username"
                                       value="<c:if test="${not empty error}"><c:out value="${SPRING_SECURITY_LAST_USERNAME}" escapeXml="false" /></c:if>"/>
                            </td>
                        </tr>
                        <tr>
                            <td><spring:message code="login.label.password"/></td>
                            <td><input id="password" type="password" name="password"/></td>
                        </tr>
                        <tr>
                            <td><spring:message code="login.label.remember"/></td>
                            <td><input id="remember_me_checkbox" type="checkbox" name="remember_me"/></td>
                        </tr>
                        <tr>
                            <td><input name="reset" type="reset" value="<spring:message code="global.reset" />"/></td>
                            <td><input id="submit-btn" name="submit" type="submit" value="<spring:message code="global.submit" />"/></td>
                        </tr>
                    </table>
                </form>

                <p><spring:message code="login.create" htmlEscape="false"/></p>
            </fieldset>
            <div id="notifytop"></div>
        </sec:authorize>

        <sec:authorize access="isAuthenticated()">
            <p><spring:message code="global.logout" htmlEscape="false" /></p>
        </sec:authorize>

		    <script type="text/javascript">
            $(document).ready(function () {
                $('#username').puiinputtext();
                $('#password').puiinputtext();
                $('#remember_me_checkbox').puicheckbox();
                $('#login_fieldset').puifieldset();
                $('#notifytop').puinotify();

                $("input[name='username']").blur(function () {
                    var values = {};
                    values['username'] = this.value;
                    
                    sendJson(
                        values,
                        '/login/validate',
                        function(result) { 
                            if (result.found) {
                                $('#userWarning').hide();
                            } else {
                                $('#userWarning').show();
                            }
                        }
                    );
                });

            });
        </script>
	  </body>
</html>
