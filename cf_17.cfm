<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Task 17</title>
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>
<script>
    function checkit() {
        var v = document.getElementById("text1").value;    
        if(!v.match(/^[0-9]+$/)) {
            alert('Please only enter numeric characters');
            return false;
        }
    }
</script>
</head>
<body>     
    <div class="container">
        <div class="row">
            <h2>Tak 17</h2> 
            <form action="cf_17.cfm" name="form" method="post" onsubmit="return checkit()"> 
                <div class="form-group col-md-4">
                    <label>Enter number</label>
                    <input type="text" name="text1" id="text1" class="form-control"> 
                </div><br>
                <div class="form-group col-md-4"> 
                    <label></label> 
                    <input type="Submit" class="btn btn-success" value="Submit" name="formSubmit">
                </div> 
            </form> 
        </div>
        <cfif (isDefined("form.text1"))> 
            <cfoutput>
                <cfloop from="1" to=#form.text1# index="idx"> 
                    <cfif #idx# MOD 2 eq 0>
                        <cfset style="color:green;font-weight:900">
                    <cfelse>
                        <cfset style="color:blue;font-weight:900"> 
                    </cfif>
                    <span style="#style#"> #idx#  </span><br>
                </cfloop>
            </cfoutput>
        </cfif>       
    </div>
</body> 
</html>