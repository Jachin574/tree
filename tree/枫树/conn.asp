<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" > 
</head>
<%
Dim Conn,ConnStr
On error resume next
Set Conn=Server.CreateObject("Adodb.Connection")
ConnStr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&Server.MapPath("test.mdb")
conn.ConnectionTimeout = 10           '�������ӳ�ʱ   �����趨���ӳ�ʱΪ10��
Conn.open ConnStr

if error then
   error.clear
   Set Conn = Nothing
   Response.Write "ϵͳ�������ݿ����ӳ���!"
   Response.End
end if

sub CloseConn()
	conn.close
	set conn=Nothing
	end sub	
	
%>