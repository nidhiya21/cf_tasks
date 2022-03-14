
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>
<title>Task 25-2</title>
</head>
<body>  
    <div class="container mt-3">
        <cfset GetWords = application.tagcloud.GetWords() />
        <cfloop query="GetWords">
            <cfoutput>- #GetWords.paragraph#(#GetWords.count#)<br></cfoutput>
        </cfloop>
    </div> 
</body>
</html>
