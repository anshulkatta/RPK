<%@page import="com.rpk.CategoryRetreiver"%>
<%@page import="org.springframework.context.annotation.Import"%>
<%@ page language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta charset="UTF-8">
<title>Add Category</title>
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
    <c:if test="${not empty status}">
   			<p class="center white-text">
   			Add Item Status - ${status}
   			</p>
	</c:if>
	<div class="container grey lighten-3">
		<div class="row">
		<div class="center">
			<h4>Add New Category</h4>
		</div>
			<form:form class="col s12" method="post"
				action="${context}/admin/insertCategory" modelAttribute="category" >
				<!-- Category Name  -->
				<div class="input-field col s6">
					<form:input id="categoryName" type="text" class="validate" path="categoryName"/>
					 <label class="black-text" for="categoryName">Enter Category Name</label>
				</div>
				<!-- Category Description -->
				
				<div class="input-field col s6">
					<form:input id="categoryDesc" type="text" class="validate" path="categoryDesc"/>
					 <label class="black-text" for="categoryDesc">Enter Category Desc</label>
				</div>
				
				<button class="btn waves-effect waves-light red accent-2" type="submit"
					name="action">Submit
					<i class="material-icons right">send</i>
				</button>
				
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form:form>
			
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
