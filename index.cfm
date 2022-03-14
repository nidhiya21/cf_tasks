<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Task 25</title>
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/> 
</head>
<body>
        <div class="container">
            <div class="row">
                <h2>Tak 25</h2> 
                <form action="index.cfm" name="form" method="post" enctype="multipart/form-data" > 
                    <div class="form-group col-md-4">
                        <label> Description</label>
                        <textarea name="paragraph" class="form-control"> </textarea>
                    </div><br>
                    <div class="form-group col-md-4"> 
                        <label></label> 
                        <input type="Submit" class="btn btn-success" value="Submit" name="formSubmit">
                    </div> 
                </form> 
            </div>
            <cfif StructKeyExists(Form,'formSubmit')>
                <cfset string ="#form.paragraph#">
                <cfset words = reMatch("[[:word:]]+", string)>
                <cfset wordCount = structNew()>
                <cfloop index="word" array="#words#"> 
                    <cfif structKeyExists(wordCount, word)> 
                         <cfset wordCount[word]++> 
                    <cfelse>
                         <cfset wordCount[word] = 1>
                    </cfif> 
                </cfloop>
                <cfset sorted = structSort(wordCount, "numeric", "desc")>
                    <table border="1" width="400">
                        <tr> 
                            <th width="50%">Word</th> 
                            <th>Count</th> 
                        </tr>
                        <cfloop index="word" array="#sorted#"> 
                                <cfoutput>
                                    <tr> 
                                    <td>#word#</td> 
                                    <td>#wordCount[word]#</td> 
                                    </tr>
                                </cfoutput> 
                                <cfquery  datasource="cf_task_employee"  name="addPage">
                                    insert into tags(paragraph,count)
                                    values(
                                    "#word#",#wordCount[word]#  
                                    )
                                </cfquery> 
                        </cfloop>
                    </table>                 
            </cfif>
        </div>
</body> 
</html>