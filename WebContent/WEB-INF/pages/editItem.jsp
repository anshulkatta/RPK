<%@page import="com.rpk.CategoryRetreiver"%>
<%@page import="org.springframework.context.annotation.Import"%>
<%@ page language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta charset="UTF-8">
<title>Edit Item</title>
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
				action="${context}/admin/modifyItem" 
				modelAttribute="item">
				<!-- Item Name -->
				<div class="input-field col s6">
					<form:input id="itemName" type="text" class="validate" path="itemName"/>
					 <label class="black-text" for="itemName">Enter Item Name</label>
				</div>
				<!-- Category -->
				<div class="input-field col s6 ">
					<form:select id="categoryId" path="categoryId">
					    <c:set var="selectedCat" value=""/>
						<option   value="" disabled selected >Choose Category</option>
						<c:forEach var="cat" items="${categoryList}">
						<c:choose>
							<c:when test="${item.categoryId == cat.categoryId}">
								<option value="${cat.categoryId}" selected>${cat}</option>
							</c:when>
							<c:otherwise>
								<option value="${cat.categoryId}">${cat}</option>
							</c:otherwise>
						</c:choose>
						</c:forEach>
					</form:select> 
				<label>Select Jewelery Type</label>
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
				

				<%-- <div class="file-field input-field col s6">
					<div class="btn">
						<span>File</span> <form:input path="files" type="file" multiple="multiple" />
					</div>
					<div class="file-path-wrapper">
						<input class="file-path validate" type="text" 
							placeholder="Upload one or more files" />
					</div>
				</div> --%>
				
				<input type="hidden" name="itemId"
								value="${item.itemId}" />

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
	<div class="container grey lighten-3">
	<div class="card grey lighten-3">
		<div class="card-title">
			<h5 class="center blue-text">
				<span>Uploaded Pics</span>
			</h5>
		</div>
		<div class="card-content grey lighten-3">
		<c:forEach var="imageFile" items="${item.imageFileList}" varStatus="i">
					<form method="post" name="form${i.index}"
								action="${context}/admin/deletePic">
						<img  width="50" style="padding-bottom:10px;" class="materialboxed"
						src="${context}/images/${item.itemId}/${imageFile}" 
						data-caption="${item.itemName }" />						
								<a class="waves-effect waves-light
								modal-trigger" href="#modal${i.index}">
								<i class="small material-icons red-text accent-2">delete</i>
								</a>
								<div id="modal${i.index}" class="modal">
    							<div class="modal-content">
    							  <h4>Confirm</h4>
      							<p>Are you Sure ? 
      							<br/><br/>You want to delete</p>
   								 </div>
   								 <div class="modal-footer">
   								 <button class="modal-close waves-effect waves-green red btn"
   								 type="button">Cancel</button>
      							<button class="modal-close waves-effect waves-green btn"
      							type="submit"
      							name="delete${i.index}">Ok</button>
   								 </div>
  								</div>
								<input type="hidden" name="itemId"
								value="${item.itemId}" />
								<input type="hidden" name="imageFile"
								value="${imageFile}" />
								<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
								</form>
						
					</c:forEach>
		</div>
	</div>
	</div>
</body>
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('select');
    var options =  {};
    var instances = M.FormSelect.init(elems, options);
    
  });
  
document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.materialboxed');
    var options =  {};
    var instances = M.Materialbox.init(elems, options);
  });
  
document.addEventListener('DOMContentLoaded', function() {
	var elems = document.querySelectorAll('.modal');
	var options = {};
	var instances = M.Modal.init(elems, options);
});
  

</script>
</html>
