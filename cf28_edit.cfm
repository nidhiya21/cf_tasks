<html>
<head> 
<title>Content Pages</title> 
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/> 
</head> 
<body>  
        <cfif StructKeyExists(form,'formSubmit')>  
            <cfif IsDefined("url.id") and IsNumeric(url.id)> 
                <cfquery datasource="cf_task_employee" name="updateqry">
                    update contentpages
                    set pagename=<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.pagename#">,
                    pagedesc=<cfqueryparam cfsqltype="cf_sql_varchar"  value="#form.pagedesc#">
                     where pageid=<cfqueryparam cfsqltype="cf_sql_integer" value="#url.id#">
                    </cfquery> 
                    <cflocation url="cf28_welcome.cfm" addtoken="No">
            </cfif>
        </cfif>
        <h3>Edit Page</h3>
            <form name="form" method="post" action="">
                <div class="mb-3 mt-3">
                        <label for="pagename">Page Name:</label>
                        <input name="pagename" type="text">
                </div>
                <div class="mb-3 mt-3">
                        <label for="pagedesc">Page Description:</label>
                        <input name="pagedesc" type="text">
                </div>
                <input name="formSubmit" class="btn btn-primary" type="submit" >
                <input type="Reset" value="Clear Form"  class="btn btn-primary">
            </form>            
</body>
</html>


