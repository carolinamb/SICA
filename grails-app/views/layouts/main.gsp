<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>Sistema de Control de Armamento</title>
	<meta name="viewport" content="width=device-width, user-scalable=no">

	<!-- Open Sans font from Google CDN -->
	<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">

	<!--[if lt IE 9]>
	<g:javascript src="ie.js"/>
	<![endif]-->

	<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'pixel-admin.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'rtl.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'themes.min.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'widgets.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'overrideStyles.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'fullcalendar.min.css')}">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'fullcalendar.print.css')}" type="text/css" media="print">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.min.css')}" type="text/css">
	<style>
	input[type="text"]  {
		text-transform:uppercase;
	}

	textarea {
		text-transform:uppercase;
	}

	li, .ui-menu-item > a, #ui, .ui-corner-all{z-index: 1151 !important;}
	</style>
	<g:javascript library="jquery"/>
	<r:require module="jquery-ui"/>
	<r:layoutResources/>
	<g:layoutHead/>
	<g:javascript src="bootstrap.js"/>
	<g:javascript src="pixel-admin.js"/>


	<jqui:resources themeCss="${resource(dir:'css/jqueryTheme', file:'jquery-ui-1.10.4.custom.min.css')}"/>
	<!---->
	<script>
		var pattern,validation;
		$(function() {
			$('input[name^="fecha"]').datepicker();
		});
		$(function() {
			$('input[name^="hora"]').timepicker();
		});

		$(function() {
			$.fn.modal.Constructor.prototype.enforceFocus = function () { };
		});

		$('.table > tr').click(function() {
			console.log("--------")
		});

		function showSpinner(){
			$(".spinner").show();
		}
		function hideSpinner(){
			$(".spinner").hide();
		}
	</script>
</head>

<body class="theme-default main-menu-fixed">
<script>var init = [];</script>
<div id="main-wrapper">
	<div id="main-navbar" class="navbar navbar-inverse" role="navigation">
		<button type="button" id="main-menu-toggle"><i class="navbar-icon fa fa-bars icon"></i><span
				class="hide-menu-text">HIDE MENU</span></button>

		<div class="navbar-inner">
			<div class="navbar-header">
				<a href="${createLink(uri: '/')}" class="navbar-brand">
					<i class="navbar-icon fa fa-home"></i>INICIO
				</a>

				<!-- Main navbar toggle -->
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-navbar-collapse"><i
						class="navbar-icon fa fa-bars"></i></button>
			</div>

			<!-- .navbar-nav -->
			<div id="main-navbar-collapse" class="collapse navbar-collapse main-navbar-collapse">
				<div>
					<g:if test="${false}">
						<div class="right clearfix">
							<ul class="nav navbar-nav pull-right right-navbar-nav">
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown</a>
									<ul class="dropdown-menu">
										<li><a href="#">First item</a></li>
										<li><a href="#">Second item</a></li>
										<li class="divider"></li>
										<li><a href="#">Third item</a></li>
									</ul>
								</li>
							</ul>
						</div>
					</g:if>
				</div>
			</div>
		</div>
	</div>
	<div id="main-menu" role="navigation">
		<div id="main-menu-inner">
			<div class="menu-content top" id="menu-content-demo">
				<div>
					<div class="text-bg"><span class="text-slim">Menu Principal</span></div>
				</div>
			</div>
			<ul class="navigation">
				<li>
					<g:link action="index" controller="grado"><i class="menu-icon fa fa-file-text-o"></i><span class="mm-text">Operaciones Diarias</span></g:link>
				</li>
				<li class="mm-dropdown">
					<a href="#"><i class="menu-icon fa fa-users"></i><span class="mm-text">Personal</span></a>
					<ul>
						<li>
							<g:link action="index" controller="policia"><i class="menu-icon fa fa-user"></i><span class="mm-text">Policias</span></g:link>
						</li>
						<li>
							<g:link action="index" controller="armero"><i class="menu-icon fa fa-male"></i><span class="mm-text">Armeros</span></g:link>
						</li>
					</ul>
				</li>
				<li class="mm-dropdown">
					<a href="#"><i class="menu-icon fa fa-shield"></i><span class="mm-text">Armamento</span></a>
					<ul>
						<li>
							<g:link action="index" controller="arma"><i class="menu-icon fa fa-circle"></i><span class="mm-text">Armas</span></g:link>
						</li>
						<li>
							<g:link action="index" controller="cartucho"><i class="menu-icon fa fa-cog"></i><span class="mm-text">Cartuchos</span></g:link>
						</li>
					</ul>
				</li>
				<li class="mm-dropdown">
					<a href="#"><i class="menu-icon fa fa-bars"></i><span class="mm-text">Administrar catalogos</span></a>
					<ul>
						<li>
							<g:link action="index" controller="grado"><i class="menu-icon fa fa-bookmark"></i><span class="mm-text">Grado</span></g:link>
						</li>
						<li>
							<g:link action="index" controller="adscripcion"><i class="menu-icon fa fa-building"></i><span class="mm-text">Adscripci&oacute;n</span></g:link>
						</li>
						<li>
							<g:link action="index" controller="puesto"><i class="menu-icon fa fa-suitcase"></i><span class="mm-text">Puesto</span></g:link>
						</li>
						<li>
							<g:link action="index" controller="region"><i class="menu-icon fa fa-th-large"></i><span class="mm-text">Regi&oacute;n</span></g:link>
						</li>
					</ul>
				</li>
			</ul>

		</div>
	</div>

	<div id="content-wrapper" class="theme-white">
		<!--<div class="col-sm-12">-->
		<g:layoutBody/>
		<!--</div>-->
	</div>

	<div id="main-menu-bg">

	</div>
</div>
<script type="text/javascript">
	init.push(function () {
		//Javascript code here
		$('#main-menu').on('touchend', 'a', function () {
			$(this).trigger('click');
			return false;
		});
		$('#main-menu').on('touchend', 'button', function () {
			$(this).trigger('click');
			return false;
		});
	})
	window.PixelAdmin.start(init);
</script>
<r:layoutResources/>
</body>
</html>