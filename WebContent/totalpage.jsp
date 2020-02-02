<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    session="true" errorPage="/test.jsp"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%-- include指令 --%>
    <%-- 用来包含另一个页面的信息 --%>
    <%-- 这是静态包含 --%>
    <%-- 静态包含是指,将两个jsp页面拼接到一起,然后再翻译成一个servlet(只会生成一个java文件) --%>
    <%@ include file="/header.jsp" %>
    <h1>主体</h1>
    <%@ include file="/footer.jsp" %>
    
    <%-- 这是动态包含 --%>
    <%-- 当运行时,它会生成多个文件,所有的包含标签都会分别生成一个java文件 --%>
    <jsp:include page="/header.jsp"></jsp:include>
    <h1>主体</h1>
    <jsp:include page="/footer.jsp"></jsp:include>
    
    <%
        List<String> list = new ArrayList<>();
    
        // 可以通过配置page指令里的session="true"
        // 如果为true,就可以在此jsp页面中直接使用session对象,不需要去创建(默认就是true)
        session.setAttribute("username", "zzq");
        
        // page指令中的errorPage是用来配置如果当前页面发生异常,网页会重定向到errorPage所指定的页面进行处理
    %>
    
    <%-- 隐式对象 --%>
    <%-- 当程序运行,jsp被翻译成servlet之后,service方法中有9个对象定义并初始化完毕,可以直接使用 --%>
    <%-- 可以直接使用这9个对象 --%>
    <%-- pageContext (PageContext对象) --%>
    <%-- _jspx_page_context (PageContext对象,和pageContext一样) --%>
    <%-- session (HttpSession对象) --%>
    <%-- application (ServletContext对象) --%>
    <%-- config (ServletConfig对象) --%>
    <%-- out (JspWriter对象) --%>
    <%-- _jspx_out (JspWriter对象,和out一样) --%>
    <%-- page (Object对象,也就是当前servlet的对象) --%>
    <%-- request (HttpServletRequest对象) --%>
    <%-- response (HttpServletResponse对象) --%>
    <%-- exception (异常对象,只有当你是错误页面的时候才会有该对象) --%>
        
</body>
</html>