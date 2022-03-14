<cfcomponent>
    <cffunction name="makeRandomString" returnType="string" output="false">
        <cfset var chars = "23456789ABCDEFGHJKMNPQRS">
        <cfset var length = randRange(4,7)>
        <cfset var result = "">
        <cfset var i = "">
        <cfset var char = "">       
        <cfloop index="i" from="1" to="#length#" >
            <cfset char = mid(chars, randRange(1, len(chars)),1)>
            <cfset result&=char>
        </cfloop>	
        <cfreturn result>
    </cffunction>
</cfcomponent> 
