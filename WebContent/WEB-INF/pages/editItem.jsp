<%@page import="com.rpk.CategoryRetreiver"%>
<%@page import="org.springframework.context.annotation.Import"%>
<%@ page language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
   			Edit Item Status - ${status}
   			</p>
	</c:if>
	<div class="container grey lighten-3">
		<div class="row">
		<div class="center">
			<h4>Edit Item</h4>
			
		</div>
			<form:form class="col s12" method="post"
				action="${context}/admin/insertItem?${_csrf.parameterName}=${_csrf.token}" modelAttribute="item" enctype="multipart/form-data">
				<!-- Item Name -->
				<div class="input-field col s6">
					<form:input id="itemName" type="text" class="validate" path="itemName"/>
					 <label class="black-text" for="itemName">Enter Item Name</label>
				</div>
				<!-- Category -->
				<div class="input-field col s6 ">
					<form:select id="categoryId" path="categoryId">
						<option   value="" disabled selected >Choose Category</option>
						<c:forEach var="cat" items="${categoryret}">
						<option value="${cat.categoryId}">${cat}</option>
						</c:forEach>
					</form:select> 
				<label>Select Jewelry Type</label>
				</div>
				
				<div class="input-field col s6">
					<form:input id="itemDesc" type="text" class="validate" path="itemDesc"/>
					 <label class="black-text" for="itemDesc">Enter item Desc</label>
				</div>
				
				<div class="input-field col s6">
					<form:input id="itemWeight" type="number" class="validate" step="any" path="itemWeight"/>
					 <label class="black-text" for="itemWeight">Enter item Weight</label>
				</div>
				
				<div class="input-field col s6">
					<form:input id="itemPrice" type="number" class="validate" step="any" path="itemPrice"/>
					 <label class="black-text" for="itemPrice">Enter item Price</label>
				</div>

				<div class="file-field input-field col s6">
					<div class="btn">
						<span>File</span> <form:input path="files" type="file" multiple="multiple" />
					</div>
					<div class="file-path-wrapper">
						<input class="file-path validate" type="text" 
							placeholder="Upload one or more files" />
					</div>
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
