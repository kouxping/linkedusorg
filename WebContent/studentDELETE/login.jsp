<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.bwm.page.Show"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<%
Show show=new Show();
String strUser=(String)session.getAttribute("email");
if(strUser==null){
	out.print(show.errorBox("oops",""));
	return;
}
%>
<frameset rows="70,*" cols="*" frameborder="NO" border="0"
	framespacing="0">
	<frame src="top.htm" name="topFrame" scrolling="NO" noresize>
	<frameset rows="*" cols="178,*" framespacing="0" frameborder="no"
		border="0">
		<frame src="left.htm" name="leftFrame" scrolling="NO" noresize>
		<frame src="login.htm" name="mainFrame">
	</frameset>
</frameset>
<noframes>
	<body>
	</body>
</noframes>
</html>