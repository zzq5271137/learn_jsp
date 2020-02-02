<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <!-- html注释 -->
    
    <%-- jsp注释,专门说明这一段脚本 --%>
	<%
	    // java单行注释
	    
	    /*
	     * java多行注释
	     */
	    
	    // 这里的代码在运行时会翻译到service()方法内部
	    String name = "作家";
	%>

	<h1>
		<%=name
		    // 这里的代码在运行时会被翻译成service()方法内部的out.print()
		%>
	</h1>

	<%!
	    // 这里的代码在运行时会被翻译成servlet的成员的内容
	    String name2 = "作家";
	%>
	
	<%-- 请求转发 --%>
	<jsp:forward page="/totalpage.jsp"></jsp:forward>

</body>
</html>