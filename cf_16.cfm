<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>
<title>Task 16</title>
</head>
<body>  
<cfoutput>
    <div class="container mt-3">
        <h2>Tak 16</h2>
        <cfset matrixArray= [[1, 4, 7], [2, 5, 8], [3, 6, 9]]/>
        <cfloop from="1" to="#ArrayLen(matrixArray)#" index="i">
            <cfloop from="1" to="#ArrayLen(matrixArray[i])#" index="j">
                 #matrixArray[i][j]#
            </cfloop>
            <br>
        </cfloop>
    </div>
</cfoutput>
</body>
</html>