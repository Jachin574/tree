<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!--#include file="conn.asp"-->
<%
set rs=server.createobject("adodb.recordset")
sql="select * from img "
rs.open sql,conn,1,3
rs.addnew
response.Write(request.form("img"))
rs("img")=server.HTMLEncode(trim(request.form("img")))
rs.update
response.Write "<script language=javascript>alert('添加成功');window.location.href='index.asp';</script>"
rs.close
set rs=nothing
conn.close
set conn=nothing
%>
