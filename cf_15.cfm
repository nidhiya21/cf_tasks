<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>
<title>Task 15</title>
</head>
<body>
<cfoutput>
    <div class="container mt-3">
           <h2>Task 15</h2>
			<cfinvoke component="components.cf_15" method="multiply" returnvariable="result">
				<cfinvokeargument name="arg1" value="1"/> 
				<cfinvokeargument name="arg2" value="2"/> 
				<cfinvokeargument name="arg3" value="3"/>   
			</cfinvoke>
			cfinvoke UsingArgument  : #result#<br>
			<cfobject name="tellMultiply" component="components.cf_15">
			<cfinvoke component="#tellMultiply#" method="multiply">
			cf using object  : #tellMultiply.Multiply(3,4,5)#<br>
			<cfset	tellMultiply=createObject("component","components.cf_15")>
			<cfset	result=tellMultiply.Multiply(2,3)>
			cf using instance #result#
	</div>
</cfoutput>	
</body>
</html>
