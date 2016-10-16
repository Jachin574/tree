<!--#include file="conn.asp"-->
<html>
<head>
<title>图片上传</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>
<table width="50%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#f0f0f0">
  <form name="form" method="post" action="save.asp">
    <tr bgcolor="#FFFFFF">
      <td align="center">
      <input name="img" type="text" class="form2" id="img" size="40">
        &nbsp;
        <input name="Submit2" type="button" class="submit" onClick="window.open('img1.asp?formname=form&editname=img&uppath=treespicture&filelx=jpg','','status=no,scrollbars=no,top=20,left=110,width=420,height=165')" value="上传图片">
        &nbsp;&nbsp;</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td align="center"><input name="Submit" type="submit" class="submit" value=" 提交 ">
          <input name="Submit" type="reset" class="submit" value=" 重置 "></td>
    </tr>
  </form>
</table>
</body>
</html>