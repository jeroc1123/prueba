<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="beans.Mensaje, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="jumbotron" style="font-color:white;">
			<form action="Enviar" method="post" class="form-horizontal">
				<div class="form-group">
					<div class="form-group text-center">
						<h1><label class="control-label">Foro</label></h1>
					</div>
					<div class="form-group text-center">
						<h3><label class="control-label">Mensaje</label></h3>
					</div>
					<div class="form-group text-center">
						<div class="col-sm-2">
							<button class="btn btn-danger" type="submit">Enviar</button>
						</div>
						<div class="col-sm-9">
							<textarea class="form-control" rows="6" name="mensaje"></textarea>
						</div>
					</div>
				</div>
			</form>
			<div class="form-group text-center">
				<h3><label class="control-label">Lista de Mensajes</label></h3>
			</div>
			<%ServletContext sc=request.getServletContext();
			if(sc.getAttribute("lista")!=null) {
				List<Mensaje> l=(ArrayList<Mensaje>)sc.getAttribute("lista");%>
				<table class="table table-striped table-bordered">
					<thead>
						<tr><td>IP</td><td>Mensaje</td></tr>
					</thead>
					<%for (Mensaje m:l){%>
						<tr><td class="col-sm-2"><%=m.getIp()%></td><td class="col-sm-8" ><%=m.getMensaje()%></td></tr>
					<%}%>
				</table>
			<%}%>
		</div>
	</div>
</body>
</html>