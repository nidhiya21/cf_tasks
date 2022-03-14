 <cfcomponent>
   <cffunction name="getUsers" access="public" output="false" returntype="query">		     
        <cfquery name="getUsersDet">
            SELECT *
            FROM userrole
            WHERE username = '#FORM.username#'
            AND password = '#FORM.password#'
        </cfquery>
        <cfreturn getUsersDet />
    </cffunction>
    <cffunction name="deleteuser" access="remote" output="false">		     
        <cfquery name="deleteuserDet">
            delete from contentpages  where pageid=<cfqueryparam cfsqltype="cf_sql_bigint" value="#url.did#">
        </cfquery>
        <cfoutput>Page deleted successfully</cfoutput>
        <cflocation url="cf28_welcome.cfm" addtoken="No">
    </cffunction>
    <cffunction name="getPagesVal" access="public" output="false" >	 
        <cfquery name = "pageList"> 
            SELECT pageid, pagename, pagedesc
            FROM contentpages
            ORDER BY pageid 
        </cfquery>
        <cfreturn pageList/>  
    </cffunction>
    <cffunction name="pageView" access="public" output="false" >
        <cfargument name="pageid" type="numeric" required="yes" >	 
        <cfquery name = "pageViewDet"> 
            select pagename,pagedesc from contentpages 
            where pageid=<cfqueryparam cfsqltype="cf_sql_bigint" value="#pageid#">
        </cfquery>
        <cfreturn pageViewDet/>  
    </cffunction> 
    <cffunction name="insertPage" access="public" output="false" >
        <cfargument name="pagename" type="string">
        <cfargument name="pagedesc" type="string">	 
        <cfquery name = "insertPage" result="pageResult"> 
            insert into contentpages(pagename,pagedesc)
            values(
             <cfqueryparam cfsqltype="cf_sql_varchar" value="#pagename#" />
            ,<cfqueryparam cfsqltype="cf_sql_varchar" value="#pagedesc#" />
            )
        </cfquery>
        <cfset getNumberOfRecords = listLen(#pageResult.generated_key#)> 
        <cfreturn getNumberOfRecords>
    </cffunction>
    <cffunction name="updatePage" access="public" output="false" >
        <cfargument name="pageid" type="numeric"  >	
        <cfargument name="pagename" type="string" >
        <cfargument name="pagedesc" type="string" > 
        <cfquery name = "updatePage" result="res"> 
            update contentpages
            set pagename=<cfqueryparam cfsqltype="cf_sql_varchar" value="#pagename#">,
            pagedesc=<cfqueryparam cfsqltype="cf_sql_varchar"  value="#pagedesc#">
            where pageid=<cfqueryparam cfsqltype="cf_sql_integer" value="#pageid#">
        </cfquery>
         <cfreturn res>
    </cffunction>      
</cfcomponent> 
