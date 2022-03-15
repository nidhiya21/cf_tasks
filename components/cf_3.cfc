<cfcomponent output="false"> 
    <cffunction name="displayElement" access="public">
        <cfset myList="3,8,9,11,12">
        <cfloop list="#myList#" index="item"> 
          <cfif item%3==0>
           <cfset item= #item#>
          </cfif>
        </cfloop>
        <cfreturn item>
    </cffunction>
</cfcomponent>
