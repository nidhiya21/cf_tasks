<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/> 
<title>Task 27</title>
</head>
<body>  
    <div class="container mt-3">
        <cfif (isDefined("url.file"))>
            <cfoutput>Incorrect Username/Password</cfoutput><br>   
        </cfif>
        <cfif (isDefined("url.logout"))>
            <cfset  StructClear(Session) />
            <cflocation url="cf_27.cfm" addtoken="No">
        </cfif>
        <cfif structKeyExists(form,'login')>
            <cfset getUsersDet = application.cf_27.getUsers() />
            <cfif #getUsersDet.recordcount# EQ 1>
                <cfset Session.LoggedIn = "1">
                <cfset Session.username = "#getUsersDet.username#"> 
                <cflocation url="cf_welcome.cfm" addtoken="No"> 
            <cfelse>
                <cflocation url="cf_27.cfm?file=error" addtoken="No">
                <cfset StructClear(Session)> 
            </cfif>
        </cfif>
        <h2>Task 27</h2>
        <h2>Login</h2>
        <div class="row">
            <form name="CFForm_1"  method=post>
                <div class="form-group col-md-4">
                    <label>Email login</label>
                    <input type="text" name="username" id="username" class="form-control" required> 
                </div><br>
                <div class="form-group col-md-4">
                    <label>Password</label>
                    <input type="password" name="password" id="password"  class="form-control" required> 
                </div><br>
                <div class="form-group col-md-4"> 
                    <label></label> 
                    <input type="Submit" class="btn btn-success" value="Login" name="login">
                </div> 
            </form>
        </div>
    </div> 
</body>
</html>
