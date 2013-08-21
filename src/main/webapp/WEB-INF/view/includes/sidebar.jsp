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
<ul id="sidebar" class="nav nav-pills nav-stacked">
    <li class="avatar hidden-phone">
        <a href="#">
            <img src="library/images/100/06.png" />
            <span>Geunevere Calista</span>
        </a>
    </li>
    <li class="active">
        <a href="index.html">
            <i class="micon-screen"></i>
            <span class="hidden-phone">Dashboard</span>
        </a>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <i class="micon-gift"></i>
            <span class="hidden-phone">Asset</span>
        </a>
        <ul class="dropdown-menu">
            <li>
                <a href="typography.html">
                    <i class="icon-large icon-underline"></i> Typography
                </a>
            </li>
            <li>
                <a href="tables.html">
                    <i class="icon-large icon-table"></i> Tables
                </a>
            </li>
            <li>
                <a href="buttons.html">
                    <i class="icon-large icon-th"></i> Buttons
                </a>
            </li>
            <li>
                <a href="icons.html">
                    <i class="icon-large icon-check-empty"></i> Icons
                </a>
            </li>
            <li>
                <a href="dropdowns.html">
                    <i class="icon-large icon-sort"></i> Dropdowns
                </a>
            </li>
            <li>
                <a href="tabs.html">
                    <i class="icon-large icon-columns"></i> Tabs
                </a>
            </li>
            <li>
                <a href="breadcrumbs-paginations.html">
                    <i class="icon-large micon-loop"></i> Breadcrums & Paginations
                </a>
            </li>
            <li>
                <a href="alerts.html">
                    <i class="icon-large micon-bell"></i> Alerts
                </a>
            </li>
            <li>
                <a href="progress-bars.html">
                    <i class="icon-large micon-paragraph-left"></i> Progress Bars
                </a>
            </li>
            <li>
                <a href="pickers-sliders.html">
                    <i class="icon-large micon-equalizer"></i> Pickers & Sliders
                </a>
            </li>
            <li>
                <a href="modals.html">
                    <i class="icon-large micon-copy"></i> Modals
                </a>
            </li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <i class="micon-checkbox"></i>
            <span class="hidden-phone">Profile</span>
        </a>
        <ul class="dropdown-menu">
            <li>
                <a href="merchant/merchant.jsp">
                    <i class="icon-large icon-th-large"></i> Merchant Management
                </a>
            </li>
            <li>
                <a href="form-input-sizes.html">
                    <i class="icon-large icon-th-large"></i> Input Size
                </a>
            </li>
            <li>
                <a href="form-control-states.html">
                    <i class="icon-large icon-th-large"></i> Form control states
                </a>
            </li>
            <li>
                <a href="wysiwyg.html">
                    <i class="icon-large icon-th-large"></i> WYSIWYG
                </a>
            </li>
        </ul>
    </li>
    <li>
        <a href="/logout">
            <i class="micon-lab"></i>
            <span class="hidden-phone">Logout</span>
        </a>
    </li>
</ul>