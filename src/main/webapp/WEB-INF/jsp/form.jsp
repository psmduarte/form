<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	

	<h1>FORM</h1>

	<p>Pagia chamada a partir do mapping em FormController</p>

	<form:form id="frmForm" action="" method="post" modelAttribute="form">
		<div>
			<form:label path="nome">NOME:</form:label>
			<form:input path="nome" />
		</div>
		<div>
			<form:label path="sobrenome">SOBRENOME:</form:label>
			<form:input path="sobrenome" />
		</div>

		<form:button>ENVIAR</form:button>
	</form:form>
	
	<%=(request.getAttribute("msg") != null) ? request.getAttribute("msg"):"" %>
	
</body>
</html>