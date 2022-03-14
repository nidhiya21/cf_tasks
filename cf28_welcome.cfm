<cfif IsDefined("url.did") and IsNumeric(url.did)>
   <cfset deleteuserDet = application.cf_28.deleteuser() />
</cfif>
<h2><center><span class="role"> <cfoutput>#Session.roles#</cfoutput></span>  Dashboard</h2></center>  
<h3><center>WELCOME <cfoutput>#Session.username#</cfoutput> !</H3></center>
<div class="logout">
<a href="cf_28.cfm?logout=yes" class="logoutlink">Logout</a>
</div>
<html>
<head> 
<title>Content Pages</title> 
<link href="./css/welcome.css" rel="stylesheet" type="text/css"/> 
</head> 
<body>
    <div class="outer">
        <h3>Content Pages</h3>   
        <cfset pageList = application.cf_28.getPagesVal() />  
        <cfif ((Session.roles EQ 'admin') or (Session.roles EQ 'editor'))>
            <a href="cf28_new.cfm">Add Page</a> 
            <table cellpadding = 1 cellspacing = 1> 
                <tr> 
                    <td bgcolor = f0f0f0> <b>&nbsp;</b>  </td> 
                    <td bgcolor = f0f0f0> <b>Page name</b> </td> 
                    <td bgcolor = f0f0f0> <b>Page description</b> </td> 
                    <td bgcolor = f0f0f0> <b>Action</b>  </td>
                </tr>  
                <cfoutput query="pageList" >
                <tr>
                    <td valign = top bgcolor = ffffed> <b>#pageList.currentRow#</b> </td>
                    <td valign = top> <font size = "-1">#pageList.pagename#</font> </td> 
                    <td valign = top> <font size = "-1">#pageList.pagedesc#</font> </td>
                    <td valign = top> <font size = "-1">
                    <a href="cf28_new.cfm?id=#pageList.pageid#">Edit</a> / <a href="cf_28.cfc?method=deleteuser&did=#pageList.pageid#">Delete</a></font> </td>  
                </tr> 
                </cfoutput> 
            </table> 
        <cfelse>     
            <cfoutput query="pageList">
            <a href="pageview.cfm?id=#pageList.pageid#">#pageList.pagename#</a><br>
            </cfoutput> 
        </cfif>
    </div>
</body> 
</html>

