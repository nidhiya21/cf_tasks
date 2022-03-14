<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Task 26</title>
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/> 
</head>
<body>
    <div class="container">
        <div class="row">
            <h2>Tak 26</h2> 
            <form action="" name="form" method="post" enctype="multipart/form-data" > 
            <div class="form-group col-md-4">
                <label> Description</label>
                <input type = "file" name = "attachment">
            </div><br>
            <div class="form-group col-md-4"> 
                <label></label> 
                <input type="Submit" class="btn btn-success" value="Submit" name="formSubmit">
            </div> 
            </form> 
        </div>
        <cfif structKeyExists(form,'formSubmit')>
            <cfinvoke component="components.cf_26" method="readText" returnvariable="result">
            </cfinvoke>      
            <cfloop query="result">
                <cfif #count# GTE 4>
                    <cfset style="color:red;font-size:25pt;" > 
                <cfelseif #count# EQ 3>
                    <cfset style="color:yellow;font-size:22pt;" > 
                <cfelseif #count# EQ 2>
                    <cfset style="color:green;font-size:18pt;" > 
                <cfelse>    
                    <cfset style="color:blue;font-size:14pt;" > 
                </cfif>  
                <cfoutput><p style=#style#>- #paragraph#(#count#)<p><Bbr></cfoutput>
            </cfloop>   
        </cfif>                 
    </div>
</body> 
</html>