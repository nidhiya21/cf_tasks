<cfcomponent output="false">
    <cffunction name="getString" access="public" returntype="struct">
        <cfargument name="inputString" type="string" required="true" />
        <cfset words = reMatch("[[:word:]]+", inputString)>
        <cfset wordCount = structNew()>
            <cfloop index="word" array="#words#"> 
                <cfif structKeyExists(wordCount, word)> 
                    <cfset wordCount[word]++> 
                <cfelse>
                    <cfset wordCount[word] = 1>
                </cfif> 
            </cfloop>
        <cfreturn wordCount> 
    </cffunction>
    <cffunction name="GetWords" access="public" output="false" >	 
         <cfquery name="GetWords"> 
            SELECT paragraph,count
            FROM tags where length(paragraph) > 3  ORDER BY count DESC,paragraph ASC
        </cfquery>
        <cfreturn GetWords/>  
    </cffunction>
    <cffunction name="GetWordsAll" access="public" output="false" >	 
         <cfquery name="GetWordsAll"> 
            SELECT paragraph,count
            FROM tags   ORDER BY count DESC,paragraph ASC
        </cfquery>
        <cfreturn GetWordsAll/>  
    </cffunction>

</cfcomponent>
