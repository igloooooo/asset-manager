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
<script type="text/javascript" src="/js/json2.js"></script>
<script type="text/javascript" src="${pageContext.request.scheme}://www.google.com/jsapi?key=<c:choose><c:when test="${pageContext.request.scheme == 'http'}">${initParam.jsapiHttpKey}</c:when><c:otherwise>${initParam.jsapiHttpsKey}</c:otherwise></c:choose>"></script>
<script type="text/javascript">
    google.load("jquery", "<c:out value='${initParam.jQueryVersion}'/>");
</script>
<script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js"></script>
<script type="text/javascript" src="/js/primeui-0.9.6-min.js"></script>

<!-- external api -->
<script src="http://maps.google.com/maps/api/js?v=3.5&sensor=false"></script>

<!-- base -->
<script src="library/assets/js/jquery.js"></script>
<script src="library/assets/js/bootstrap.min.js"></script>

<!-- addons -->
<script src="library/plugins/chart-plugins.js"></script>
<script src="library/plugins/jquery-ui-slider.js"></script>
<script src="library/plugins/redactor/redactor.min.js"></script>
<script src="library/plugins/jmapping/markermanager.js"></script>
<script src="library/plugins/jmapping/StyledMarker.js"></script>
<script src="library/plugins/jmapping/jquery.metadata.js"></script>
<script src="library/plugins/jmapping/jquery.jmapping.min.js"></script>
<script src="library/plugins/jquery.uniform.js"></script>
<script src="library/plugins/chosen.jquery.min.js"></script>
<script src="library/plugins/bootstrap-datepicker.js"></script>
<script src="library/plugins/jquery.timePicker.min.js"></script>

<!-- plugins loader -->
<script src="library/js/loader.js"></script>