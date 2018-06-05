<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <base href="<%=basePath%>">  
      
    <title>一起去旅行</title>  
    <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache">  
    <meta http-equiv="expires" content="0">      
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
    <meta http-equiv="description" content="This is my page">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />  
    <style type="text/css">
        h1 {color:#696666}
        .body{
                background-repeat:no-repeat;
                background-position:center right;
                background-attachment:fixed;
        }
        .container {
                display: flex;
                flex-flow: row;
        }
        .main {
                width:33.3%;
        }
        .left {
                flex: 1;
        }
        .right {
                flex: 1;
        }
        a:link{
            color: #68ee68;
            text-decoration: underline;
        }
        a:visited{
            color: #00ff00;
            text-decoration: none;
        }
        a:hover{
            color: #000000;
            text-decoration: none;
        }
        p{
                text-align: left;
                color: white;
                size: 16px;
        }
    </style> 
    <script type="text/javascript">  
      function change(){  
          var img =document.getElementById("verify");  
          img.src="VerifyCodeServlet?a="+new Date().getTime();  
      }  
    </script>  
  </head>  
  <body background="http://iguide.lvmama.com/uploadfile/2015/0703/201507031135193763.jpg">  
  <center>  
<div>  
<h1 style="font-family:'Microsoft Yahei'" align="center" >一起去旅行</h1>
<form action="LoginServlet" method="post">  
    <table>  
    <tr>  
    <td width="66" align="right"><font size="3">帐号：</font></td><td colspan="2"><input type="text" name="username" value="${username }" style="width:200;height:25;"/></td>  
    </tr>  
    <tr>  
    <td align="right"><font size="3">密码：</font></td><td colspan="2"><input type="text" name="password"  style="width:200;height:25;"/></td>  
    </tr>  
    <tr>  
    <td align="right"><font size="3">验证码：</font></td>  
    <td width="108" valign="middle"><input type="text" name="verifycode" style="width:100;height:25;"/></td>  
    <td width="90" valign="middle"><a href="javascript:change()"><img src="VerifyCodeServlet" id="verify" border="0"></a></td>  
    </tr>  
    <tr><td colspan="3" align="center"><input type="submit" value="登录" style="width:130;height:30;"/></td></tr>  
    </table>  
    </form> 
    <a href="regist.jsp"><font size="2"><i>没有帐号？点击注册</i></font></a>   
        <nav class="nav right"></nav>
    </div>	
    <div class="container" >
            <nav class="nav left"  align="left">
                <p class="nav left">联系我们</p>
                <dl class="alt">
            <p class="">Address:</p>
            <p>中国 • 安徽省 • 滁州市 • 凤阳县 • 东华路9号（安徽科技学院）</p>
            <p>Phone:</p>
            <p>(+86)•17355012290</p>
            <p>Email:</p>
            <p><a href="https://mail.qq.com/cgi-bin/frame_html?sid=G1hnM8xn9Jh1pSB6&r=284893604425867bed71d20e021ad317">
            2238512963@qq.com</a></p>
            </nav> 
</div>  
</center>  
  </body>  
</html>  
