<cfif structKeyExists(form, 'login')>
	<cfset authenticationService = createobject("component",components.authenticationService)>
	<cfset aErrorMessages = authenticationService.validateUser(form.username,form.password)>
	<cfif arrayIsEmpty(aErrorMessages)>
		<cfset isUserLoggedIn = authenticationService.doLogin(form.username,form.password)>
	</cfif>
</cfif>
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
        <h2>Task 28</h2>
        <h2>Login</h2>
		<cfif  structKeyExists(variables,'aErrorMessages') AND NOT arrayIsEmpty(aErrorMessages)>
			<cfoutput>
			</cfoutput>	
		</cfif>		
        <div class="row">
			<cfif structKeyExists(variables,'isUserLoggedIn')  AND isUserLoggedIn eq false>
				<p class="errorMessage">User not found.please try again</p>
			</cfif> 

			<cfif structKeyExists(session,'stLoggedInUser')>
			<p><cfoutput>welcome #session.stLoggedInUser.username#</cfoutput></p>
<!--- 			<p><a href="profile.cfm">My profile<a></p>  --->
<!--- 				<cfif isUserInRole('admin')> --->
<!--- 					<p><a href="main.cfm">My profile<a></p> --->
<!--- 			    <cfif>		 --->
			<cfelse>
           <FORM NAME="form" METHOD=POST>

            <div class="form-group col-md-4">
                <label>Email login</label>
                <input type="text" name="username" id="username" class="form-control" required> 
            </div><br>
            <div class="form-group col-md-4">
                <label>Password</label>
                <input type="password" name="password" id="password" MAXLENGTH="50" class="form-control" required> 
            </div><br>
            
            <div class="form-group col-md-4"> 
                <label></label> 
                <input type="Submit" class="btn btn-success" value="Login" name="login">
            </div> 
            </FORM>
		</cfif>	
        </div>
      </div>
</div> 
</body>
</html>
