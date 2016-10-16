<!doctype html>
<!--#include file="Conn.asp" -->
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title>BNUZ-树联网</title>
    <link rel="stylesheet" href="http://cache.amap.com/lbs/static/main.css?v=1.0"/>
    <script type="text/javascript"
            src="http://webapi.amap.com/maps?v=1.3&key=0105364c27ceaa70ab15eba206441d65"></script>
</head>
<body>
    <div id="mapContainer"></div>
        <%
        set rs = server.createobject("adodb.recordset")
        sql="select * from trees where pos = '1' "
        rs.open sql,conn,1,3 
        if not rs.eof then
        while not rs.eof
        %>
        <table style="display:none">
            <tr>
              <td><%=rs("positionX")  %></td>
              <td><%=rs("positionY")  %></td>
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

</body>
    <script type="text/javascript" src="./js/jquery-1.4.2.js"></script>
    <script type="text/javascript" src="./js/map.js" charset="gbk"></script>
</html>