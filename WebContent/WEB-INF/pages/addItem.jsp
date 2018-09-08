<%@page import="com.rpk.CategoryRetreiver"%>
<%@page import="org.springframework.context.annotation.Import"%>
<%@ page language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="context" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta charset="UTF-8">
<title>Add Item</title>
<c:url value="/j_spring_security_logout" var="logoutUrl" />

<script>
	function formSubmit() {
		document.getElementById("logoutForm").submit();
	}
</script>

<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js"></script>
</head>

<body class="black">

 <nav>
    <div class="nav-wrapper">
      <a href="#" class="brand-logo right">Logo</a>
      <ul id="nav-mobile" class="left hide-on-med-and-down">
        <li><a href="${context}/admin">Admin Page</a></li>
        <li><a href="${context}/admin/addItem">AddItem</a></li>
        <c:if test="${pageContext.request.userPrincipal.name != null}">
        <li><a href="javascript:formSubmit()">Logout</a></li>
        </c:if>
      </ul>
    </div>
  </nav>

	<div class="container light-blue lighten-2">
		<div class="row">
		<div class="center">
			<h4>Add New Item</h4>
			
		</div>
			<form class="col s12" method="post"
				action="${context}/admin/insertItem">
				<!-- Item Name -->
				<div class="input-field col s6">
					<input id="itemName" type="text" class="validate">
					 <label class="black-text" for="itemName">Enter Item Name</label>
				</div>
				<!-- Cetegory -->
				<div class="input-field col s6 ">
					<select>
						<option   value="" disabled selected >Choose Category</option>
						<c:forEach var="cat" items="${categoryret}">
						<option value="${cat}">${cat}</option>
						</c:forEach>
					</select> 
				<label>Select Jewelry Type</label>
				</div>
			
				<div class="center">
				
				<button class="btn waves-effect waves-light" type="submit"
					name="action">Submit
					<i class="material-icons right">send</i>
				</button>
				</div>
				
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
			
			<form action="${logoutUrl}" method="post" id="logoutForm">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
		</div>
	</div>





	
</body>
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('select');
    var options =  {};
    var instances = M.FormSelect.init(elems, options);
    
  });
</script>
</html>
