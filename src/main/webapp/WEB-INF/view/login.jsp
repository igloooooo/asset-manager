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

    </head>
    <body>
        <div class="well widget">
            <sec:authorize access="isAnonymous()">
                <div class="widget-header">
                    <h3><spring:message code="login.header" /></h3>
                </div>

                <c:if test="${not empty error}">
                    <p class="error"><spring:message code="login.error" /></p>
                </c:if>

                <p id="userWarning" class="error" style="display:none"><spring:message code="login.nouser" /></p>

                <form action="/login/submit" method="post" class="form-horizontal">
                    <div class="control-group">
                        <label for="username" class="control-label"><spring:message code="login.label.username" /></label>
                        <div class="controls">
                            <input id="username" type="text" name="username" value="<c:if test="${not empty error}"><c:out value="${SPRING_SECURITY_LAST_USERNAME}" escapeXml="false" /></c:if>"/>
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="inputPassword" class="control-label"><spring:message code="login.label.password" /></label>
                        <div class="controls">
                            <input id="inputPassword" type="password" name="password" />
                        </div>
                    </div>
                    <div class="control-group">
                        <div class="controls">
                            <label class="checkbox">
                                <div class="checker" id="uniform-undefined"><span><input type="checkbox" class="fancy" style="opacity: 0;"></span></div> <spring:message code="login.label.remember" />
                            </label>
                            <button class="btn btn-warning" name="submit" type="submit"><spring:message code="global.submit" /></button>
                            <button class="btn btn-warning" name="reset" type="reset"><spring:message code="global.reset" /></button>
                        </div>
                    </div>
                </form>

                <p><spring:message code="login.create" htmlEscape="false" /></p>
            </sec:authorize>

            <sec:authorize access="isAuthenticated()">
                <p><spring:message code="global.logout" htmlEscape="false" /></p>
            </sec:authorize>
        </div>

        <script type="text/javascript">
            $(document).ready(function () {
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