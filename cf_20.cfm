<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>  
<title>Task 20</title>
</head>
<body>
<cfoutput>	  
    <div class="container mt-3">
        <h2>Task 20</h2>
        <cfset showForm = true>
        <cfparam name="form.email" default="">
        <cfparam name="form.captcha" default="">
        <cfparam name="form.captchaHash" default="">
        <cfif isDefined("form.send")>
                <cfset errors = "">        
                <cfif (StructKeyExists(form, "email") AND NOT isValid("email", form.email))>
                    <cfset errors = errors & "You must enter valid email.<br />">
                </cfif>
                <cfif hash(ucase(form.captcha)) neq form.captchaHash>
                    <cfset errors = errors & "You did not enter the right text?<br />">
                </cfif>       
                <cfif errors is "">
                    <cfset showForm = false>
                </cfif>            
        </cfif>
        <cfif showForm>
            <cfinvoke component="components.cf_20" method="makeRandomString" returnvariable="captcha">
            </cfinvoke>
            <cfset captchaHash = hash(captcha)>
            <p>Please fill the form below.</p>          
                <cfif isDefined("errors")>
                    <p><b>Correct these errors:<br />#errors#</b> </p>
                </cfif>            
                <form action="" method="post" >
                    <table>
                        <tr>
                            <td>Email:</td>
                            <td><input name="email" class="form-control" type="text" value="#form.email#"></td>
                        </tr>
                        <tr>
                            <td>Enter Text Below:</td>
                            <td><input type="text" class="form-control" name="captcha"></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                            <cfimage action="captcha" width="300" height="75" text="#captcha#">
                            <input type="hidden" name="captchaHash" value="#captchaHash#">
                            </td>
                        </tr>		
                        <tr>
                            <td> </td>
                            <td><input type="submit" name="send" class="btn btn-success" value="Submit"></td>
                        </tr>
                    </table>
                </form>
        <cfelse>
            <p>Email Address successfully subscribe our newsletter</p>
        </cfif>     
    </div> 
 </cfoutput>	    
</body>
</html>
