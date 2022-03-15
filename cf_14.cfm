<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task 14</title>
    <link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>         
</head>
<body>
<cfoutput>
    <div class="container">
    <div class="row">
        <h2>Tak 14</h2> 
        <form action="cf_14.cfm" name="form" method="post" enctype="multipart/form-data" > 
            <div class="form-group col-md-4">
                <label>Image Name</label>
                <input type="text" name="imageName" class="form-control"> 
            </div><br>
            <div class="form-group col-md-4">
                <label>Image Description</label>
                <textarea name="imageDescription" class="form-control"> </textarea>
            </div><br>
            <div class="form-group col-md-4">
                <label>Upload Image</label>
                 <input type="file" name="fileUpload" accept="image/gif,image/jpeg,image/gif" >
            </div><br>
            <div class="form-group col-md-4"> 
                <label></label> 
                <input type="Submit" class="btn btn-success" value="Submit" name="formSubmit">
            </div> 
        </form> 
    </div>
    <cfif StructKeyExists(Form,'formSubmit')>               
        <cfif len(trim(form.fileUpload))>
                <cfset lmt = 1000000 />
                <cfif cgi.content_length LTE lmt>
                    <cffile action="upload"
                        fileField="fileUpload"
                        accept="image/png,image/gif,image/jpeg,image/jpg,.png,.gif,.jpeg,.jpg" 
                        allowedextensions=".png,.gif,.jpeg,.jpg" 
                        destination=#expandpath("./images")# nameconflict="makeunique">
                    <cffile  action="rename" 
                        source="#expandpath("./images/")##cffile.serverFileName#.#cffile.serverFileExt#" 
                        destination="#expandpath("./images/")##form.imageName#.#cffile.serverFileExt#"/>
                    <cfimage action="resize" source="#expandpath("./images/")##form.imageName#.#cffile.serverFileExt#"
                        destination="#expandpath("./images/thumb/")##form.imageName#.#cffile.serverFileExt#" height="20" width="20" overwrite="yes"/> 
                        <cfset destinationImage=#form.imageName#&"."&#cffile.serverFileExt#>  
                        <p>Thankyou, your for updating data.Your updated datas below</p> 
                        <p>Image Name is : 
                            <a href="cf_14detail.cfm?name=#form.imageName#&desc=#form.imageDescription#&img=#destinationImage#"> 
                            #form.imageName#</a>
                        </p>
                        <img src="./images/thumb/#form.imageName#.#cffile.serverFileExt#"/>
                <cfelse>
                        <center>
                            Your file size of #cgi.content_length# is too big!
                            <br>
                            The maximum size allowed is #fileSizeLimit#.
                        </center>
                        <cfabort>
                </cfif>
        </cfif>
    </cfif>
</div>
</cfoutput> 
</body> 
</html>