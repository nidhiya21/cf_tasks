<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>
<title>Task 24</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
    $(document).ready(function() {
        $(':input[type="submit"]').prop('disabled', true);
    });
</script> 
<script language="javascript" type="text/javascript">
    function checkUserExists(){      
        var useremail = $('#useremail').val();
        $.ajax({
        url: 'cf_24.cfc', 
        async: false,
        data: 
            { 
                method: "searchUser",
                useremail:useremail},
                success: function(data) {
                    if (data==true) { 
                        alert('This Email id not existing in our system you can submit');
                        $(':input[type="submit"]').prop('disabled', false);                    
                    } 
                    else {
                        alert('This Email id alredy existing in our system'); 
                    }                    
            }
        }); 
    }
</script> 
</head>
<body>  
    <cfif structKeyExists(form,'inputSubmit')>
    <cfinvoke component="components.cf_24" method="savesubscribers" returnvariable="result">
        <cfinvokeargument name="username"  value = "#form.username#" />
        <cfinvokeargument name="useremail"  value = "#form.useremail#" /> 
    </cfinvoke>
    <cfif result GT 0>
        <script>
        alert("Employee Addedd Successfully");
        </script>
     </cfif>
    </cfif>
    <div class="container mt-3">
        <h2>Task 24</h2>
        <h2>Subscribe</h2>
        <form name="form" method="post"> 
            <div class="mb-3 mt-3">
                <input type="name" id="username" name="username" class="form-control" placeholder="Enter Name" /></br>
                <input type="email" id="useremail"  name="useremail" class="form-control" placeholder="you@example.com" /></br> 
                <input name="inputSubmit" class="btn btn-primary" type="submit">  
                <input type="button" name="Finalize" value="Check User Exist" class="btn btn-primary" onClick="checkUserExists();"/>
            </div>
        </form> 
    </div> 
</body> 
</html>
