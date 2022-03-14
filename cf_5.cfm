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
        <cfoutput>
            <h2>Task 5</h2>
            <cfinvoke component="components.cf_5" method="ageSinceDOB" returnvariable="result">
                <cfinvokeargument name="dob"  value = "1/26/1959"/>
            </cfinvoke>  
            <cfinvoke component="components.cf_5" method="ageSinceDOB" returnvariable="resultSon">
                <cfinvokeargument name="dob"  value = "11/21/1991"/>
            </cfinvoke> 
                Mother Age (1/26/1959)=#result#<br>
                User Age (11/21/1991)=#resultSon#<br>
            <cfinvoke component="components.cf_5" method="deliverage" returnvariable="resultdeliver">
                <cfinvokeargument name="dob"  value = "1/26/1959"/>
            </cfinvoke>         
                Deliver Age =#resultdeliver#<br>
                Days remaining for mother's Birthday =#dateDiff("d",  Now(),"2023-01-26")#  days<br>
                Days remaining for user's Birthday = #dateDiff("d", Now(), "2022-11-21")# days<br>
        </cfoutput>
     </div>   
</body>
</html>
