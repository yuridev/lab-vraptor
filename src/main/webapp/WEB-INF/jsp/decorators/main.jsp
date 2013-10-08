<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title><decorator:title default="BKF Lab - Software de gerenciamento de orçamentos e laudos" /></title>
<!--
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/application.css"/>
    -->
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css"></link>
<style type="text/css">
body {
	padding-top: 60px;
	padding-bottom: 40px;
}

.sidebar-nav {
	padding: 9px 0;
}

@media ( max-width : 980px) {
	/* Enable use of floated navbar text */
	.navbar-text.pull-right {
		float: none;
		padding-left: 5px;
		padding-right: 5px;
	}
}
</style>
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" type="text/css"></link>
<script
	src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>

<decorator:head />
</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<button type="button" class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="brand" href="/">BKF Lab</a>
				<div class="nav-collapse collapse">
					<p class="navbar-text pull-right">
						Bem vindo, <a href="#" class="navbar-link"> Admin </a>
					</p>
					<ul class="nav">
						<li><a href="/">In&iacute;cio</a></li>
						<li><a href="/clientes">Clientes</a></li>
						<li><a href="/parametros">Par&acirc;metros</a></li>
						<li><a href="#">Or&ccedil;amentos</a></li>
						<li><a href="#">Laudos</a></li>
						<li><a href="#">Menu 5</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>
	<div class="container-fluid">
	<decorator:body />
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/javascripts/application.js"></script>
		
</body>
</html>
