<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <!-- 在页面中显示信息的方式 -->
    aaa
    <%="bbb" %>
    <%
        out.write("ccc");
        response.getWriter().write("ddd");
    %>
    
    <!-- 这几种方式,会先打印ddd -->
    <!-- 这是因为,aaa和bbb在程序运行时都会翻译成out.write() -->
    <!-- out会写到out缓冲区 -->
    <!-- 而response会写到response缓冲区 -->
    <!-- 当程序运行时,它会把out缓冲区里面的内容拼接到response缓冲区的后面 -->
    <!-- 因为只有response才具备响应给浏览器的能力 -->
        
</body>
</html>