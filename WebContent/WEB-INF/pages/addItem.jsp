<%@page import="com.rpk.CategoryRetreiver"%>
<%@page import="org.springframework.context.annotation.Import"%>
<%@ page language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="context" value="${pageContext.request.contextPath}" />
<html >
  <head>
    <meta charset="UTF-8">
    <title>Add Item</title>
    <c:url value="/j_spring_security_logout" var="logoutUrl" />
	
	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script>
    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="${context}/resources/css/adminpanel.css">    
  </head>

  <body>


<div class="wrapper">
<c:if test="${pageContext.request.userPrincipal.name != null}">
		<h2>
			Welcome : ${pageContext.request.userPrincipal.name} | <a
				href="javascript:formSubmit()"> Logout</a>
		</h2>
	</c:if>
  <h1>Add New Item</h1>

  <form class="form" method="post" action="${context}/admin/insertItem">
  	  
    <input type="text" class="name" placeholder="itemName">
     <p class="name-help">Enter Item name here.</p>
    <div>
	    <select name="category">
	    <c:forEach var="cat" items="${categoryret}">
	    	<option label="${cat}">${cat}</option>
	    </c:forEach>
	  	  
		</select>
    </div>
   
    <input type="submit" class="submit" value="Register">
    <input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
  </form>
  <form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
</div>
<p class="optimize">
  
</p>
    <script src='${context}/resources/js/jquery.min.js'></script>

        <script src="${context}/resources/js/additem.js"></script>

    
    
    
  </body>
</html>
