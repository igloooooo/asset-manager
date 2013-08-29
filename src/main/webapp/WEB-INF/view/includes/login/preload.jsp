<title><spring:message code="login.title" /></title>
<!-- required styles -->
<link href="library/assets/css/bootstrap.css" rel="stylesheet" />
<link href="library/assets/css/bootstrap-responsive.css" rel="stylesheet" />
<link href="library/css/login-style.css" rel="stylesheet" />

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<script type="text/javascript" src="/js/json2.js"></script>
<script type="text/javascript" src="${pageContext.request.scheme}://www.google.com/jsapi?key=<c:choose><c:when test="${pageContext.request.scheme == 'http'}">${initParam.jsapiHttpKey}</c:when><c:otherwise>${initParam.jsapiHttpsKey}</c:otherwise></c:choose>"></script>
<script src="http://code.jquery.com/jquery-${initParam.jQueryVersion}.min.js"></script>