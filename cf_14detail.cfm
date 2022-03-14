<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Task 14</title>
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>   
</head>
<body>
<cfoutput>
    <div class="container">
        <div class="row">
            <h2>Tak 14 Details</h2> 
            <p><b>Image Name is :</b>#URL.name#</p>
            <p><b>Image Description  is :</b>#URL.desc#</p><br>
            <img src="./images/#URL.img#"/>
        </div>
    </div>
</cfoutput>
</body> 
</html>