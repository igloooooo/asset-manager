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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page import="org.apache.commons.codec.digest.DigestUtils" %>
<%@ page import="org.apache.commons.lang.StringEscapeUtils" %>
<sec:authorize access="isAuthenticated()">
    <c:set var="email">
        <sec:authentication property="principal.email" />
    </c:set>
    <c:set var="gravatarHash" value='<%= DigestUtils.md5Hex(StringEscapeUtils.unescapeXml((String)pageContext.getAttribute("email")).trim().toLowerCase()) %>' />
</sec:authorize>

<div class="navbar-inner">
    <!-- company or app name -->
    <a class="brand hidden-phone" href="index.html">Kuta Admin 2.0.2</a>

    <!-- nav icons -->
    <ul class="nav">

        <li class="visible-phone">
            <a href="#"><i class="icon-large icon-search"></i></a>
        </li>

        <li>
            <a href="#">
                <i class="icon-large icon-globe"></i>
            </a>
        </li>

        <li>
            <a href="#">
                <i class="icon-large icon-envelope"></i>
            </a>
        </li>

        <li>
            <a href="#">
                <i class="icon-large icon-cog"></i>
            </a>
        </li>

    </ul>

    <ul class="nav pull-right">

        <!-- dropdown user account -->
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="icon-large icon-user"></i>
            </a>

            <ul class="dropdown-menu dropdown-user-account">

                <li class="account-img-container">
                    <img class="thumb account-img" src="library/images/100/07.png" />
                </li>

                <li class="account-info">
                    <h3>Geunevere Calista</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    <p>
                        <a href="#">Edit</a> | <a href="#">Account Settings</a>
                    </p>
                </li>

                <li class="account-footer">
                    <div class="row-fluid">

                        <div class="span8">
                            <a class="btn btn-small btn-primary btn-flat" href="#">Change avatar</a>
                        </div>

                        <div class="span4 align-right">
                            <a class="btn btn-small btn-danger btn-flat" href="#">Logout</a>
                        </div>

                    </div>
                </li>

            </ul>
        </li>
        <!-- ./ dropdown user account -->
    </ul>

    <!-- search form -->
    <form class="navbar-search pull-right hidden-phone" action="" />
    <input type="text" class="search-query span4" placeholder="search..." />
    </form>
    <!-- ./ search form -->
</div>
