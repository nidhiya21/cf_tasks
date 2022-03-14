<cfcomponent output="false">
    <cfset this.name = 'CF Task'/>
	<cfset this.datasource = 'cf_task_employee'/> 
	<cfset this.applicationTimeout = createtimespan(0,2,0,0) />    
	<cfset this.sessionManagement = true />
	<cfset this.sessionTimeout = createTimespan(0,0,30,0) />  
	<cffunction name="onApplicationStart" returntype="boolean" >		
		<cfset application.cf_23 = createObject("component",'cf_23') />
		<cfset application.tagCloud = createObject("component",'tagcloud') />
		<cfset application.cf_5 = createObject("component",'cf_5') />
		<cfset application.cf_12 = createObject("component",'cf_12') />
		<cfset application.cf_20 = createObject("component",'cf_20') />
		<cfset application.cf_24 = createObject("component",'cf_24') />
		<cfset application.cf_26 = createObject("component",'cf_26') />
		<cfset application.cf_27 = createObject("component",'cf_27') /> 
		<cfset application.cf_28 = createObject("component",'cf_28') />  
		<cfreturn true />
	</cffunction>
	<cffunction name="onRequestStart" returntype="boolean" >
		<cfargument name="targetPage" type="string" required="true" />
		<cfif isDefined('url.restartApp')>
			<cfset this.onApplicationStart() />
		</cfif>		
		<cfreturn true/>
	</cffunction>
</cfcomponent>