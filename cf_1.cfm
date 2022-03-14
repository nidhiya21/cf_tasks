<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/> 
<title>Task 1</title>
</head>
<body>
    <div class="container mt-3">
      <h2>Task 1</h2>
      <form method="post">
        <div class="mb-3 mt-3">
            <label for="number">Enter Number:</label>
            <input name="inputNumber" type="text"  validate="regex" pattern="[1-5]"  message="Please enter only valid integers between 1 to 5!">
        </div>
            <input name="inputSubmit" class="btn btn-primary" type="submit" validateAt="onSubmit" >
      </form>
    </div>
    <cfif structKeyExists(form,"inputSubmit") and (cgi.request_method is "post")>
      <cfoutput>
        <cfif(form.inputNumber EQ 5)>
          Very Good
        <cfelseif (form.inputNumber EQ 4)> 
          Good
        <cfelseif (form.inputNumber EQ 3)> 
          Fair   
        <cfelse> 
          Ok
        </cfif>
      </cfoutput>
    </cfif>
</body>
</html>
