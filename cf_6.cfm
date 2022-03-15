<html>
<head>
<title>Task 6</title>
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/> 
</head>
<body>	
	<div class="container mt-3">
		<h3>Task 6</h3>
		<div class="row ">
			<form action="cf_6.cfm" method="post" >
				<div class="form-group col-md-3">
					<label>Enter Key:</label>
					<input type="text"   class="form-control"  name="textKey" id="textKey"/>
					<br/>
				</div>
				<div class="form-group col-md-3">
					<label>Enter Value:</label>
					<input type="textVal"  class="form-control" name="textVal" id="textVal"/>
					<br/>
				</div>
				<div class="form-group col-md-3">
					<input type="submit" class="btn btn-primary"  name="formSubmit" value="Update"/>
				</div>
			</form>
			<cfif StructKeyExists(Form,'formSubmit')>
				<cfscript>
					myStruct=StructNew();
					StructInsert(myStruct,"#form.textKey#","#form.textVal#",true);
				</cfscript>	
				<cfdump var="#mystruct#" > 
			</cfif>
		</div>
	</div>
</body>
</html>
