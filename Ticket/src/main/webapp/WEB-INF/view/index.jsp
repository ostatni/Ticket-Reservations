<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

<title>Home</title>
</head>
<body>
	<div role="navigation">
		<nav class="navbar navbar-inverse bg-inverse navbar-toggleable-md">
			<a class="navbar-brand" href="/home">Home</a>
			<ul class="nav navbar-nav">
				<li><a href="#">Szukaj</a></li>
				<li><a href="/movies">Filmy</a></li>
			</ul>
		</nav>
	</div>

	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">
			<div class="container" id="homediv">
				<div class="jumbotron text-center">
					<h1>Strona główna kina</h1>
				</div>
			</div>

			<div class="alert alert-success">
				<h4>Sesja 1: Obecny weekend!</h4>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_LOGIN'}">
			<div class="container text-center">
				<form class="form-horizontal" method="POST"
					action="/login-uzytkownik">
					<c:if test="${not empty error}">
						<div class="alert alert-danger">
							<c:out value="${error}"></c:out>
						</div>
					</c:if>
					<div class="form-group row">
						<label class="col-form-label col-md-2">Login</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username"
								value="${users.username}" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-form-label col-md-2">Hasło</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="password"
								value="${users.password}" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Login" />
					</div>
				</form>
			</div>
		</c:when>
	</c:choose>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
</body>
</html>
