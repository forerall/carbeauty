<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

<input type="button" name="Submit" onclick="javascript:history.back(-1);" value="返回上一页"/>

<input type="button" name="Submit" onclick="if(confirm('确认删除吗')){alert('yes');}else{alert('no');return;}" value="返回上一页"/>
</body>
</html>