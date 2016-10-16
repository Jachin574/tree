<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" > 
</head>
<%
Dim Conn,ConnStr
On error resume next
Set Conn=Server.CreateObject("Adodb.Connection")
ConnStr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&Server.MapPath("test.mdb")
conn.ConnectionTimeout = 10           '设置连接超时   这里设定连接超时为10秒
Conn.open ConnStr

if error then
   error.clear
   Set Conn = Nothing
   Response.Write "系统错误：数据库连接出错!"
   Response.End
end if

sub CloseConn()
	conn.close
	set conn=Nothing
	end sub	
	
%>