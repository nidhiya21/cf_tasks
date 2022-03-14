<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/> 
<title>Task 3</title>
</head>
<body>
    <div class="container mt-3">
        <h2>Task 3</h2>
        <form method="post">
          <div class="mb-3 mt-3">
            <label for="number">Enter Number:</label>
            <input name="inputNumber" type="text" validate="regex" pattern="[1-5]"  message="Please enter only valid integers between 1 to 5!" >
          </div>
            <input name="inputSubmit" class="btn btn-primary" type="submit"  >
        </form>
    </div>
    <cfif structKeyExists(form,"inputSubmit") and (cgi.request_method is "post")>     
      <cfset myList="3,8,9,11,12">
        <cfloop list="#myList#" index="item"> 
          <cfif item%3==0>
            <cfoutput>#item# </cfoutput>
          </cfif>
        </cfloop>      
    </cfif>
</body>
</html>