<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <!-- pageContext是一个域对象(符合域对象的特点) -->
    <!-- pageContext又比较特殊 -->
    <!-- 因为它可以向指定的其他域中存取数据(比如session,request和servletContext) -->
    <!-- 还可以通过pageContext获取其它的8大隐式对象 -->

    <%-- 往其他域中存数据 --%>    
    <%
        // 往pageContext里存数据
        pageContext.setAttribute("name", "zzq");
        
        // 往request里存数据
        pageContext.setAttribute("requestName", "requestZzq", PageContext.REQUEST_SCOPE);
        
        // 往session里存数据
        pageContext.setAttribute("sessionName", "sessionZzq", PageContext.SESSION_SCOPE);
        
        // 往servletContext里存数据(也就是application对象)
        pageContext.setAttribute("applicationName", "applicationZzq", PageContext.APPLICATION_SCOPE);
    %>
    
    <%=pageContext.getAttribute("name")%><br>
    <%=request.getAttribute("requestName")%><br>
    <%=session.getAttribute("sessionName")%><br>
    <%=application.getAttribute("applicationName")%><br>
    
    <%-- 获取其它隐式对象 --%>
    <%
        HttpSession mySession = pageContext.getSession();
        System.out.println(mySession.getAttribute("sessionName"));
    %>
    
</body>
</html>