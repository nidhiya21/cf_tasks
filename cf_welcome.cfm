<cfif NOT IsDefined("Session.loggedIn")>
    <cfset StructClear(Session)>
    <cflocation url="cf_27.cfm">
</cfif>
<h3><center>WELCOME <cfoutput>#Session.username#</cfoutput> !</h3></center> 
<p><a href="cf_27.cfm?logout=yes">Logout</a></p>
