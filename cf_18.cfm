<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Task 18</title>
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>  
</head>
<body>
        <h2>Task 18</h2>
        <div class="container">
            <cfscript>
                qryResult = queryExecute("SELECT * FROM employee", {}, {datasource="cf_task_employee"});
            </cfscript>
            <cfdump var="#qryResult#">
        </div>
</body> 
</html>