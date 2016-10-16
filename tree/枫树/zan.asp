<!--#include file="conn.asp" -->

<%

	set rs = server.createobject("adodb.recordset")

	sql = "update trees set ÔÞ = ÔÞ+1 where ID= "&request("id")&" "

	conn.execute sql

	rs.update

	sql = "select ÔÞ from trees where ID= "&request("id")&" "

	rs.open sql,conn,1,3

	response.write (rs("ÔÞ"))

%>