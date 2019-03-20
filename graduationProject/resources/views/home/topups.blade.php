<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<form action="" method="post" style="width: 400px; margin: auto ;margin-top: 300px;" >
    充值金额：<input type="text" name="money">
    <input type="submit" value="确认" onclick="if(confirm('确认充值吗')){}else{return;}">
    <input type="button" name="Submit" onclick="javascript:history.back(-1);" value="返回"/>

</form>

</body>
</html>