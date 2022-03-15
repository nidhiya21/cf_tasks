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
            <input name="inputNumber" type="text"  >
          </div>
            <input name="inputSubmit" class="btn btn-primary" type="submit"  >
        </form>
    </div>
    <cfif structKeyExists(form,"inputSubmit")>     
      <cfinvoke component="components.cf_3" method="displayElement" returnvariable="item">
      </cfinvoke>  
      <cfoutput>Output :#item#</cfoutput>      
    </cfif>
</body>
</html>