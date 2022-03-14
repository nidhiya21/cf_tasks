<cfcomponent output="false"> 
    <cffunction name="GetSpecificUserVal" access="public">
        <cfargument name="inputNum" type="numeric" required="yes" >
            <cfquery name = "GetSpecificUser"  >         
                SELECT  firstName
                FROM usersdetail
            </cfquery>
            <cfset yourRow =  GetSpecificUser.firstName[#inputNum#]/>               
       <cfreturn yourRow> 
    </cffunction> 
    <cffunction name="GetAllUser" access="public" >       
            <cfquery name = "GetUser"   result="res2" >         
                SELECT *
                FROM usersdetail
            </cfquery>
            <cfreturn GetUser>             
    </cffunction>  
</cfcomponent>