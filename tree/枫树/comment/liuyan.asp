<!--#include file="conn.asp" -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ڶ���ҳ��</title>
</head>
<body>
<% 
	content=request.form("content")
	id=request.form("id")

	set rs = server.createobject("adodb.recordset")
	sql="select * from comment "
	rs.open sql,conn,1,3
	rs.addnew
	rs("����")=content
	rs("����")=id

	rs.update
	rs.close
	set rs = nothing
				
	response.Redirect("return.asp?id="&id&" ")	
%>

</body>
</html>