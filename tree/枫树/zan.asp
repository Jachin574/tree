<!--#include file="conn.asp" -->

<%

	set rs = server.createobject("adodb.recordset")

	sql = "update trees set �� = ��+1 where ID= "&request("id")&" "

	conn.execute sql

	rs.update

	sql = "select �� from trees where ID= "&request("id")&" "

	rs.open sql,conn,1,3

	response.write (rs("��"))

%>