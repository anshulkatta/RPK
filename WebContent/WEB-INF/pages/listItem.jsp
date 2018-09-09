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
				<li><a href="${context}/admin/addItem">Add Item</a></li>
				<li><a href="${context}/admin/listItem">List Item</a></li>
				<li><a href="${context}/admin/addCategory">Add Category</a></li>
				<c:if test="${pageContext.request.userPrincipal.name != null}">
					<li><a href="javascript:formSubmit()">Logout</a></li>
				</c:if>
			</ul>
		</div>
	</nav>
		<div class="container black">
		<div class="row">
			<div class="white-text">
				<h3>Item List</h3>
			</div>
		<div class="card">
			<div class="card-panel grey lighten-3">
					<table >
						<thead>
							<tr>
								<th>Item Id</th>
								<th>Item Name</th>
								<th>Item Price</th>
								<th>Item Description</th>
								<th>Item Weight</th>
								<th>Item Category</th>
								<th>Pic</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="item" items="${items}">
						<tr>
								<td>${item.itemId}</td>
								<td>${item.itemName}</td>
								<td>${item.itemPrice}</td>
								<td>${item.itemDesc}</td>
								<td>${item.itemWeight}</td>
								<td>${item.categoryId}</td>
								<td><img src ="${context }/images/${item.itemId}/${item.imageFileList[0]}"
								width="50px" height="50px" 
								class="materialboxed" /></td>
						</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
		</div>
		</div>
	</div>

	<c:url value="/j_spring_security_logout" var="logoutUrl" />
	<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>


</body>
	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
		document.addEventListener('DOMContentLoaded', function() {
		    var elems = document.querySelectorAll('.materialboxed');
		    var options = {};
		    var instances = M.Materialbox.init(elems, options);
		  });
	</script>
</html>