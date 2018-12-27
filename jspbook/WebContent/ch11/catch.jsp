<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>ch11 : catch</title>
</head>
<body bgcolor="#FFFFFF">

<h3>&lt;c:catch&gt;</h3>


<c:catch var="errMsg">
	<%=9/0 %>
</c:catch>
error message : ${errMsg}

<%--error message : ${errMsg} 

<!-- 
	<%=9/0 %>
	error message : ${errMsg}
	두 줄만 실행할 경우 에러페이지가 화면에 노출됨
 -->
 --%>  



</body>
</html>