<cfcomponent output="false"> 
    <cffunction name="ageSinceDOB" access="public">
        <cfargument name="dob" type="string" required="yes" >
        <cfset ageYR = DateDiff('yyyy', dob, NOW())>
        <cfset ageMO = DateDiff('m', dob, NOW())>
        <cfset ageWK = DateDiff('ww', dob, NOW())>
        <cfset ageDY = DateDiff('d', dob, NOW())>
        <cfset age = "">         
        <cfif (isDate(dob))>    
            <cfif (now() LT dob)>
                <cfset age = "NA">
            <cfelse>
                <cfif (ageYR LT 2) >
                    <cfset age = ageMO & "m">
                    <cfif (ageMO LT 1) >
                        <cfset age = ageWK & "w">
                    </cfif>
                    <cfif (ageWK LT 1) >
                        <cfset age = ageDY & "d">
                    </cfif>
                <cfelse>
                    <cfset age = ageYR & "y">
                </cfif> 
            </cfif>
        <cfelse>   
            <cfset age = "NA"/>
        </cfif> 
        <cfreturn age> 
    </cffunction>
    <cffunction name="deliverage" access="public">
        <cfargument name="dob" type="string" required="yes" >
        <cfset userAge = "11/21/1991">
        <cfset ageYR = DateDiff('yyyy', dob, userAge)/>
        <cfset ageMO = DateDiff('m', dob, userAge)>
        <cfset ageWK = DateDiff('ww', dob, userAge)>
        <cfset ageDY = DateDiff('d', dob, userAge)>
        <cfset age = "">         
        <cfif (isDate(dob))>    
            <cfif (now() LT dob)>
                <cfset age = "NA">
            <cfelse>
                <cfif (ageYR LT 2) >
                    <cfset age = ageMO & "m">
                    <cfif (ageMO LT 1) >
                        <cfset age = ageWK & "w">
                    </cfif>
                    <cfif (ageWK LT 1) >
                        <cfset age = ageDY & "d">
                    </cfif>
                <cfelse>
                    <cfset age = ageYR & "y">
                </cfif> 
            </cfif>
        <cfelse>   
            <cfset age = "NA"/>
        </cfif> 
        <cfreturn age>
    </cffunction>
</cfcomponent>