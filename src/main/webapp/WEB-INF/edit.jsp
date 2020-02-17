<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
			    		
	<h1>Name</h1>
	<h1>Language</h1>
	<h1>Version</h1>	    		
	</div>
		<div>
			<form:form action="/update/${lang.id}" method="post" modelAttribute="lang">
			   <input type="hidden" name="_method" value="put">
			   <div>
  				<div>
    				<form:input class="input" type="text" path="name"/>
    				<form:errors path="name"/>
  				</div>
				</div>
			  		<div>
  					<div>
    					<form:input class="input" type="text" path="creator"/>
    					<form:errors path="creator"/>
  					</div>
					</div>
				<div>
  					<div>
    				<form:input  type="text" path="version"/>
    				<form:errors path="version"/>
  					</div>
					</div>
					<div>
  						<input type="submit"/> 	
					</div>
					</form:form>
			  		</div>
</body>
</html>