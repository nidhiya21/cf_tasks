<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/> 
<title>Task 2</title>
</head>
<body>
    <div class="container mt-3">
        <h2>Task 2</h2>
        <form method="post">
            <div class="mb-3 mt-3">
                <label for="number">Enter Number:</label>
                <input name="inputNumber" type="text"   validate="regex"
                pattern="[1-5]"  message="Please enter only valid integers between 1 to 5!">
            </div>
                <input name="inputSubmit" class="btn btn-primary" type="submit" validateAt="onSubmit" >
        </form>
    </div>
    <cfif structKeyExists(form,"inputSubmit")>
        <cfinvoke component="components.cf_2" method="displayElement" returnvariable="displayText">
        </cfinvoke>  
        <cfoutput>Output :#displayText#</cfoutput>
    </cfif>
</body>
</html>