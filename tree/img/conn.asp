<% 
set conn = Server.CreateObject("adodb.connection")
connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("data.mdb")
conn.open connstr
%>


