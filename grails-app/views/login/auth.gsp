<html>
<head>
	<meta name='layout' content='main'/>
	<title><g:message code="springSecurity.login.title"/></title>
</head>

<body>
<div id='login'>
	<div class='inner'>
		<div class="jumbotron">
			<div class="container">
			</div>
		</div>
		<div class="jumbotron col-sm-12">
			<g:if test='${flash.message}'>
				<div class="alert alert-danger alert-dismissible" role="alert">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					${flash.message}
				</div>
			</g:if>

			<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-2 control-label"><strong>Usuario</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name='j_username' id='username' placeholder="Usuario">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label strong"><strong>Contraseña</strong></label>
					<div class="col-sm-10">
						<input type="password" class="form-control" name='j_password' id='password' placeholder="Contraseña">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							<label>
								<input type="checkbox" name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>> <strong>Recordarme</strong>
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-primary" value='${message(code: "springSecurity.login.button")}'>Ingresar</button>
					</div>
				</div>
			</form>
		</div>


	</div>
</div>
<script type='text/javascript'>
	<!--
	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
	// -->
</script>
</body>
</html>
