 

<!--#include file="Conn.asp" -->

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>
	<%

	 num=  request("id")

     set rs = server.createobject("adodb.recordset")

	 sql="select * from trees where id ="&num&" "

	 rs.open sql,conn,1,3 '静态的打开方式

	 response.Write(rs("树名"))

     %>

     </title>

     

<style type="text/css">

	div#container{width:90%;margin: auto;background: white;}

	div#white{opacity:0.57;}

	div#body{width:90%;margin: auto;}

	.link1 a:hover {

	color: #F87219;

	}

	</style>



<script type="text/javascript" src="js/jquery.1.4.2-min.js">/*top部分*/</script>



<script type="text/javascript"> 

 

	function postToWb(){ 

	var _t = encodeURI(document.title); 

	var _url = encodeURI(document.location); 

	var _appkey = encodeURI("appkey");//你从腾讯获得的appkey 

	var _pic = encodeURI('');//（列如：var _pic='图片url1|图片url2|图片url3....） 

	var _site = 'http://www.hqfo.com.cn';//你的网站地址 

	var _u = 'http://v.t.qq.com/share/share.php?title='+_t+'&url='+_url+'&appkey='+_appkey+'&site='+_site+'&pic='+_pic; 

	window.open( _u,'转播到腾讯微博', 'width=700, height=680, top=0, left=0, toolbar=no, menubar=no, scrollbars=no, location=yes, resizable=no, status=no' ); 

	} 

	</script>

<style>

	.foot{

		width: auto;

		height: 80px;

		text-align: center;

	}



	.foot ul{

		text-align:center;

		list-style-type:none;

	}



	.foot ul li{

		display: inline;

		margin: 3px;

	}



	.foot ul li a img{

		width: 30px;

		height: 30px;

	}

</style>

<style type="text/css">	

    .d1{



		

       }

     .FENGMIAN

     {

     background:url(./images/banner.jpg) no-repeat center top;

     background-size:cover;

     height: 300px;

     width: 100%;

     float: left;



       }

     .menu

     {

     	height:50px;

     	width: 100%;

     	background-color:black;



     	background-size:cover;

     	text-align:center;

     	vertical-align:middle;

     	float: left;

     	 

     }

    .d1 ul

    {

        list-style-type: none;



    }

    .d1 li

    {

        display: inline;

        padding: 0px 90px 0px;

    }



 

  

 

 

.d1 a {

	border-bottom:1px

	solid #f7873c;

font-weight:lighter;

font-size: 20px;

text-decoration: none;

text-transform:uppercase;

}

.d1 a:link{

 

color:white;



}

.d1 a:visited/*已访问*/

{

    color:white;

    



}

.d1 a:hover/*悬浮*/

{

   color: #C0C0C0;

   border-bottom:3px solid #F87219;

   





}

.d1 a:active/*活动链接*/

{

    color:coral;





}



     </style>

</head>



<body style="background:url(./images/cream.jpg);background-repeat: repeat;margin: 0px;">

<div>

	

        <div class="FENGMIAN">

                  <!--    <div>

                      	<a href="枫树.html" ><img src="./images/logo.png"></a>

                      </div>         -->      

      </div>

        <div class="d1"> 

        <div class="menu" style="margin-bottom: 50px;">

        	     

                  <ul>

                       <li><a target=_blank href="http://www.wlwchina.com.cn" style="font-family: Franklin Gothic Medium; ">Home</a></li>

                        <li><a href="http://www.wlwchina.com.cn/trees/trees.html" target=_blank style="font-family: Franklin Gothic Medium;">Categories</a></li>

                 </ul>

                 

        </div>

      </div>

         </div>

	<div id="container">

	<div class="link1" style="margin: auto;width:90%;margin-bottom: 10px;">

	<a href="" style="text-decoration: none; font-size: 40px;font-weight: bolder;font-family: 幼圆;">  

	<%					

	 response.Write("<p>"&rs("树名")&"</p>")

     %>

     </a>

	</div>





	<div  id="body" style="margin-bottom: 0.5cm"> 

	<font face="Century Gothic" size="5" style="color: #F87219;"><b><%response.Write("<p>"&rs("英文名")&"</p>")%></b></font>

	</div>

	<div id="body" style="line-height: 2;margin-bottom:100px;">

    

	<img style="max-width:280px; max-height:280px; float:right;" src= "<% response.Write(rs("图片")) %>" >

	<font color="#515151" face="微软雅黑">

	 <%

	 response.Write("<p>"&rs("介绍")&"</p>")

     %>

	</font>

	</div>



	</div>

	

    

    <!--点赞-->

    <script>



	var xmlHttp;

	function S_xmlhttprequest(){

		if(window.ActiveXObject)

			xmlHttp= ActiveXObject('Microsoft.XMLHTTP');

		else if(window.XMLHttpRequest)

			xmlHttp = new XMLHttpRequest();

	}

	

	function AjaxK(){

		S_xmlhttprequest();

		xmlHttp.open("GET", "zan.asp?id="+<% =request("id")%>, true);

		xmlHttp.onreadystatechange = function(){ //方法

			document.getElementById("zan").innerHTML = xmlHttp.responseText;

			};

		xmlHttp.send(null);

	}

	</script>

	<center>
    <button type="button" onClick="AjaxK()">赞</button>

    <div id="zan">
	<%

		set rs = server.createobject("adodb.recordset")

		sql = "select 赞 from trees where ID= "&request("id")&" "

		rs.open sql,conn,1,3

		response.write (rs("赞"))

	%>
	</center>
    </div>



    

    

    <div class="foot">

    		<p><font face="幼圆" color="#6F6F6F" size="4"><b>分享至：</b></font></p>

	    		<ul>

	    			<li><a href="javascript:void(0)" onClick="postToWb();" class="tmblog"><img src="./images/TXweibo.png" alt=""></a></li>



	    			<li><a href="javascript:void((function(s,d,e){try{}catch(e){}var%20f='http://v.t.sina.com.cn/share/share.php?',u=d.location.href,p=['url=',e(u),'&title=',e(d.title),'&appkey=1392530042'].join('');function a(){if(!window.open([f,p].join(''),'mb',['toolbar=0,status=0,resizable=1,width=620,height=450,left=',(s.width-620)/2,',top=',(s.height-450)/2].join('')))u.href=[f,p].join('');};if(/Firefox/.test(navigator.userAgent)){setTimeout(a,0)}else{a()}})(screen,document,encodeURIComponent));"><img src="./images/sinaweibo.png" alt=""></a></li>



	    			<li><a href="javascript:void(function(){var d=document,e=encodeURIComponent,s1=window.getSelection,s2=d.getSelection,s3=d.selection,s=s1?s1():s2?s2():s3?s3.createRange().text:'',r='https://www.douban.com/recommend/?url='+e(d.location.href)+'&title='+e(d.title)+'&sel='+e(s)+'&v=1',w=450,h=330,x=function(){if(!window.open(r,'douban','toolbar=0,resizable=1,scrollbars=yes,status=1,width='+w+',height='+h+',left='+(screen.width-w)/2+',top='+(screen.height-h)/2))location.href=r+'&r=1'};if(/Firefox/.test(navigator.userAgent)){setTimeout(x,0)}else{x()}})()"><img src="./images/doudou.png" alt=""></a></li>



	    			<li><a href="javascript:(function(){window.open('http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url='+ encodeURIComponent(location.href)+ '&title='+encodeURIComponent(document.title),'_blank');})()" ><img src="./images/QQZone.png" alt=""></a></li>



	    		</ul>

    	</div>

	<div style="text-align:center;">

			<p>****************评论区*****************</p>



		<div style="text-align:center;">

		<%

			set rs = server.createobject("adodb.recordset")

			sql="select 评论 from comment where 树名='"&request("id")&"' "

			rs.open sql,conn,1,3 '静态的打开方式

			'response.Write("<p>"&rs("评论")&"</p>")

			if not rs.eof then

			while not rs.eof

		%>

        <table align="center">

            <tr>

              <td><%=rs("评论")  %></td>

            </tr>

        </table>

        <%

			Rs.MoveNext

			Wend

			Else

				Response.Write "还没有人留言哦！"

			End If

			Set Rs = Nothing

		%>

        <br>

        <br>

        <br>

        <br>

		</div>

	    	<div id="comment">

	    		<form method="post" action="./comment/liuyan.asp">

		            留言信息:<p><textarea name="content" cols="50" rows="1"></textarea>

				<input type="hidden" name="id" value=<% =request("id") %> /></p>

		            <input type="submit" value="提交留言" />

	        	</form>

	    	</div>

	    	</div>











	    	<div>

	    		<br>

	    		<br>

	    		<br>

	    		<br>

	    	</div>



    	<!--top部分-->

		<script type="text/javascript" src="js/scrolltopcontrol.js"></script>

</body>

</html>