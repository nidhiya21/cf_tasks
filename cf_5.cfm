<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/> 
<title>Task 5</title>
</head>
<body>
    <div class="container mt-3">
        <h2>Task 5</h2>
        <cfinvoke component="components.cf_5" method="ageSinceDOB" returnvariable="result">
              <cfinvokeargument name="dob"  value = "1/26/1959"/>
        </cfinvoke>  
        <cfinvoke component="components.cf_5" method="ageSinceDOB" returnvariable="resultSon">
             <cfinvokeargument name="dob"  value = "11/21/1991"/>
        </cfinvoke> 
            <cfoutput>Mother Age (1/26/1959)=#result#</cfoutput><br>
            <cfoutput>User Age (11/21/1991)=#resultSon#</cfoutput><br>
        <cfinvoke component="components.cf_5" method="deliverage" returnvariable="resultdeliver">
            <cfinvokeargument name="dob"  value = "1/26/1959"/>
        </cfinvoke>         
            <cfoutput>Deliver Age =#resultdeliver#</cfoutput><br>
            <cfoutput>Days remaining for mother's Birthday =#dateDiff("d",  Now(),"2023-01-26")#  days</cfoutput><br>
            <cfoutput>Days remaining for user's Birthday = #dateDiff("d", Now(), "2022-11-21")# days</cfoutput><br>
     </div>   
</body>
</html>
