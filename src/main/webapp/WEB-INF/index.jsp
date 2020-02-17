<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>	
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  		
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<td>Name</td>
				<td>Creator</td>
				<td>Version</td>
				<td>Action</td>
			</tr>
		</thead>
		<tbody>	
  			<c:forEach items="${languages}" var="language">
  			<tr>
  				<td><a href="/languages/${language.id}"><c:out value="${language.name}"/></a></td>
  				<td><c:out value="${language.creator}"/></td>
  				<td><c:out value="${language.version}"/></td>
  				<td><a href="/languages/delete/${language.id}">delete</a> <a href="/languages/edit/${language.id}">edit</a></td>
  			</tr>
  			</c:forEach>
  		</tbody>
  		
  			<form:form action="/create" method="post" modelAttribute="language">
			    <div>
  					<div>
    					Name: <form:input  type="text" path="name"/>
    					<form:errors path="name"/>
  					</div>
					</div>
			  		<div>
  						<div>
    					Creator: <form:input  type="text" path="creator"/>
    					<form:errors path="creator"/>
  						</div>
					</div>
					<div>
  						<div>
    					Version: <form:input  type="text" path="version"/>
    					<form:errors path="version"/>
  						</div>
						</div>
						<div>
  							<input type="submit"/> 	
						</div>
					</form:form>
		
	
	</table>
</body>
</html>