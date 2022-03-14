<cfcomponent>
    <cffunction name="searchUser" access="remote" returnFormat="JSON">
        <cfargument name="useremail" type="any" required="true">
        <cfquery name="searchUserMail">
                SELECT username
                        FROM subscribers 
                WHERE useremail = <cfqueryparam cfsqltype="cf_sql_varchar"  value="#arguments.useremail#">             
        </cfquery> 
        <cfset cfcResults = searchUserMail.recordcount>
        <cfif cfcResults NEQ 0>
    <!---       <cfset cfcResults1.status = "400"> --->
            <cfset cfcResults1 = "Error">    
        <cfelse>
    <!---       <cfset cfcResults1.status = "200"> --->
            <cfset cfcResults1 = "Success">             
        </cfif>
        <cfif #cfcResults1# == "Error">
            <cfreturn false>
        <cfelse>
            <cfreturn  true>
        </cfif>
    </cffunction>
    <cffunction name="savesubscribers" access="public">
        <cfargument name="username" type="string" required="yes" >
        <cfargument name="useremail" type="string" required="yes" >
        <cfif (isDefined("form.inputSubmit"))>       
            <cfquery name="AddUser" result="subscriberResult"> 
                INSERT INTO subscribers
                (
                    username,useremail
                ) 
                VALUES 
                (
                    <cfqueryparam cfsqltype="cf_sql_varchar"   value="#form.username#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar"   value="#form.useremail#">
                ) 
            </cfquery>          
        </cfif>
        <cfset getNumberOfRecords = listLen(#subscriberResult.generated_key#)> 
        <cfreturn getNumberOfRecords>
    </cffunction>
</cfcomponent>