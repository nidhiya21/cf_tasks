<cfcomponent output="false"> 
    <cffunction name="displayElement" access="public">
        <cfif(form.inputNumber EQ 5)>
            <cfset displayText = "Very Good">
        <cfelseif (form.inputNumber EQ 4)> 
            <cfset displayText = "Good">
        <cfelseif (form.inputNumber EQ 3)> 
            <cfset displayText = "Fair">
        <cfelse> 
            <cfset displayText = "Ok">
        </cfif>
            <cfreturn displayText>
    </cffunction>
</cfcomponent>
