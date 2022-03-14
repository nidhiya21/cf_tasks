
<html>
<head>
    <link href="./css/welcome.css" rel="stylesheet" type="text/css"/> 
</head>
<body>
    <div class="container mt-3">
        <cfif IsDefined("url.id") and IsNumeric(url.id)>
               <cfinvoke component="cf_28" method="pageView" returnvariable="result">
                    <cfinvokeargument name="pageid"  value = "#url.id#" />
                </cfinvoke>        
        </cfif>
        <cfoutput>
            <a href="cf28_welcome.cfm">Back</a></br> 
            <div class="page-desc">
                <b>Page name : </b>#result.pagename#</br></br>
                <b>Page description : </b> #result.pagedesc#
            </div>
        </cfoutput>
    </div> 
</body>
</html>
