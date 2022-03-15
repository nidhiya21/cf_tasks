<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Task 19</title>
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>    
</head>
<body>
       <h2>Task 19</h2>
        <div class="container">
            <form action="cf_19.cfm" name="form" method="post"> 
                 <input type="submit" value="Next Page" class="btn btn-success" name="nextpage">
            </form>  
               <cfif StructKeyExists(Form,'nextpage')>       
                    <cfif IsDefined("Cookie.VisitsCounter") is False>
                         <cfcookie name="VisitsCounter" value=1 />
                         <cfoutput>Total Visits : 1</cfoutput>
                         <cfelse> 
                         <cfset counter = #cookie.VisitsCounter# />
                         <cfset increment = counter + 1/>
                         <cfcookie name="VisitsCounter" value=#increment# />
                    </cfif> 
               </cfif> 
            <cfoutput>You clicked <b>#VisitsCounter#</b> times</cfoutput>
        </div>
</body> 
</html>