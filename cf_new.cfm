<cfif NOT IsDefined("Session.loggedIn")>
        <cfset StructClear(Session)>
        <cflocation URL="cf_27.cfm">
</cfif>   
<h3><center>WELCOME <cfoutput>#Session.username#</cfoutput> !</h3></center> 
<a href="cf_new.cfm">test</a> 
<a href="logout.cfm">Logout</a>
    