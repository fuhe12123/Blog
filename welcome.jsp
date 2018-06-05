<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<%@ page import="bbs.model.*,java.util.*"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <base href="<%=basePath%>">  
      
    <title>welcome.jsp</title>  
      
    <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache">  
    <meta http-equiv="expires" content="0">      
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
    <meta http-equiv="description" content="This is my page">  
    <!-- 
    <link rel="stylesheet" type="text/css" href="styles.css"> 
    -->  
  
  </head>  
    
  <body background="http://iguide.lvmama.com/uploadfile/2015/0703/201507031135193763.jpg"> 
    <h1>Where you want to go?</h1>  
   <form action="postMessage" method="post">
 		<br>地点<input type="text" name="title"> <br>
 		<br><textarea rows="20" cols=40 name="content">请写出自己想去的地点、时间、经费预算，希望与几人同行</textarea>
		<input type="button" value="发表" onclick="location.href='success.jsp'" >
 	</form>
 	<%
 		
 		if(session.getAttribute("messages")==null)
 			session.setAttribute("messages",new Vector<Message>());
 			Vector<Message> messages=(Vector<Message>)session.getAttribute("messages");		
 	%>
 	<%
 		for(Message message :messages)
 			out.println(String.format("<p>TITLE:<h2>%s</h2> <p>作者 %s <p>发表时间 %s <p>内容%s",message.getTitle(),message.getAuthor			(),message.getTime(),message.getContent()));
 	%>  
  </body>  
</html>  
