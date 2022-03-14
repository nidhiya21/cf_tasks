<html> 
<head> 
<title>Add Page</title> 
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/> 
</head> 
<body> 
        <div class="container mt-3">
                <div class="row">
                <cfif IsDefined("URL.id") and IsNumeric(URL.id)> 
                        <h2>Edit Page</h2> 
                <cfelse>
                        <h2>Add Page</h2> 
                </cfif>
                        <form action="" method="post"> 
                                <div class="form-group col-md-4">
                                        <label for="pagename">Page Name:</label>
                                        <input name="pagename" type="text" class="form-control">
                                </div>
                                <div class="form-group col-md-4">
                                        <label for="pagedesc">Page Description:</label>
                                        <input name="pagedesc" type="text" class="form-control"></br>
                                </div>
                                <div class="form-group col-md-4"> 
                                        <input name="formSubmit" class="btn btn-primary" type="submit" >
                                        <input type="Reset" value="Clear Form"  class="btn btn-primary">
                                </div>
                        </form>
                </div>     
        </div>
</body> 
</html>
<cfif StructKeyExists(form,'formSubmit')>
        <cfif IsDefined("URL.id") and IsNumeric(URL.id)> 
                <cfinvoke component="cf_28" method="updatePage" returnvariable="result">
                        <cfinvokeargument name="pageid"  value = "#URL.id#" />
                        <cfinvokeargument name="pagename"  value = "#form.pagename#" />
                        <cfinvokeargument name="pagedesc"  value = "#form.pagedesc#" />
                </cfinvoke>
                <cfoutput>Page updated successfully</cfoutput>
                <cflocation url="cf28_welcome.cfm" addtoken="No">
        <cfelseif IsDefined("form.pagename")  and  IsDefined("form.pagedesc")>
                <cfinvoke component="cf_28" method="insertPage" returnvariable="result">
                        <cfinvokeargument name="pagename"  value = "#form.pagename#" />
                        <cfinvokeargument name="pagedesc"  value = "#form.pagedesc#" />
                </cfinvoke>
                <cfif result GT 0>
                        <cfoutput>Page added successfully</cfoutput>
                        <cflocation url="cf28_welcome.cfm" addtoken="No">
                </cfif>
        </cfif>
</cfif>