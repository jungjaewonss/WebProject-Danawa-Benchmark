<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>테스트</h2>

 <% 
    
	request.getSession(true);

      if((String)session.getAttribute("usernick") ==null){ %>
         <% 
         response.sendRedirect("index.html");
         %> 
          <%} %>  
</body>
</html>