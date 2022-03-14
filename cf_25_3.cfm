<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/> 
<title>Task 25-3</title>
</head>
<body>  
    <div class="container mt-3">
        <cfset GetWordsAll = application.tagcloud.GetWordsAll() />
        <cfloop query="GetWordsAll">
            <cfif #GetWordsAll.count# GTE 4>
                <cfset style="color:red;font-size:25pt;" > 
            <cfelseif #GetWordsAll.count# EQ 3>
                <cfset style="color:yellow;font-size:22pt;" > 
            <cfelseif #GetWordsAll.count# EQ 2>
                <cfset style="color:green;font-size:18pt;" > 
            <cfelse>    
                <cfset style="color:blue;font-size:14pt;" > 
            </cfif>  
            <cfoutput><p style=#style#>- #GetWordsAll.paragraph#(#GetWordsAll.count#)<p><br></cfoutput>
        </cfloop>  
    </div> 
</body>
</html>
