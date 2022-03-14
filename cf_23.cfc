<cfcomponent output="false"> 
    <cffunction name="saveEmployee" access="public">
        <cfargument name="position" type="string" required="yes" >
        <cfargument name="relocate" type="string" required="yes" >
        <cfargument name="start_date" type="string" required="yes" >
        <cfargument name="website" type="string" required="no" >
        <cfargument name="resume" type="string" required="no" >
        <cfargument name="salary" type="numeric" required="no" >
        <cfargument name="firstName" type="string" required="yes" >
        <cfargument name="lastName" type="string" required="yes" >
        <cfargument name="emailAddress" type="string" required="yes" >
        <cfargument name="phoneNumber" type="numeric" required="yes" >
        <cfquery name="saveEmployeeDetails" result="employeeResult">
            INSERT INTO employee_application
            ( 
            position,relocate,start_date,website,resume,salary,firstName,lastName,emailAddress,phoneNumber
            )
            VALUES 
            ( 
            <cfqueryparam cfsqltype="cf_sql_varchar" value="#position#" />
            ,<cfqueryparam cfsqltype="cf_sql_varchar" value="#relocate#" />
            ,<cfqueryparam cfsqltype="cf_sql_date" value="#start_date#" />
            ,<cfqueryparam cfsqltype="cf_sql_varchar" value="#website#" />
            ,<cfqueryparam cfsqltype="cf_sql_varchar" value="#resume#" />
            ,<cfqueryparam cfsqltype="cf_sql_integer" value="#salary#" />
            ,<cfqueryparam cfsqltype="cf_sql_varchar" value="#firstName#" />
            ,<cfqueryparam cfsqltype="cf_sql_varchar" value="#lastName#" />
            ,<cfqueryparam cfsqltype="cf_sql_varchar" value="#emailAddress#" />
            ,<cfqueryparam cfsqltype="cf_sql_integer" value="#phoneNumber#" />
            )
        </cfquery>
        <cfset getNumberOfRecords = listLen(#employeeResult.generated_key#)> 
        <cfreturn getNumberOfRecords>
    </cffunction>
</cfcomponent>