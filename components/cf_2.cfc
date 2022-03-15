<cfcomponent output="false"> 
    <cffunction name="displayElement" access="public">
        <cfswitch expression="#form.inputNumber#"> 
            <cfcase value="5"><cfset displayText = "Very Good"></cfcase>
            <cfcase value="4"> <cfset displayText = "Good"></cfcase> 
            <cfcase value="3"><cfset displayText = "Fair"></cfcase>
            <cfdefaultcase><cfset displayText = "Ok"></cfdefaultcase> 
        </cfswitch>
            <cfreturn displayText>
    </cffunction>
</cfcomponent>
