<cfcomponent>
    <cffunction name="multiply">
          <cfset result = 1>
          <cfloop collection="#Arguments#" item="i">    
            <cfset result =  result*Arguments[i]>
          </cfloop>
          <cfreturn result>  
    </cffunction>
</cfcomponent>