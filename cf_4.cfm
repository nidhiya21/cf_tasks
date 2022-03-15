<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/> 
<title>Task 4</title>
</head>
<body>
    <div class="container mt-3">
        <cfoutput>
            <h2>Task 4</h2>
            <cfset todayDate = DateFormat(now(),'yyyy-mm-dd')>
            <cfset curdatetime = Now()>
            <cfset todayMonth = month(curdatetime)>
            <cfset monthInfull= DateFormat(curdatetime,"mmmm")>      
                <b>  Today's Date :</b> #todayDate# <br>
                <b>  Today's Month(Numeric) </b>: #todayMonth#<br>
                <b>  Today's Month(Full) </b>: #monthInfull#<br>
            <cfset dtThisMonth = CreateDate(Year( Now() ),Month( Now() ),1)/>
            <cfset dtLastDay = (DateAdd( "m", 1, dtThisMonth ) -1)/>
            <cfset dtMonday = (dtLastDay -DayOfWeek( dtLastDay ) +6)/>
            <cfif (Month( dtMonday ) NEQ Month( dtThisMonth ))>
                <cfset dtMonday = (dtMonday - 7) />
            </cfif>
            <b> Last Friday Of Month:</b> #DateFormat( dtMonday, "full" )# <br>
            <b> Last Day Of Month: </b> #DateFormat(dtLastDay, "full" )# <br>
            <cfset Variables.monthEnd = DateFormat(DateAdd("m",1, Now()), "mm/d/yyyy")>
            <cfset Variables.monthEnd = ListSetAt(Variables.monthEnd,2,"1","/")>
            <cfset Variables.monthEnd = DateFormat(DateAdd("d",-1, Variables.monthEnd), "d-mmm-yyyy")>
            <cfset Variables.monthEnd2 = DateFormat(DateAdd("d",-1, Variables.monthEnd), "d-mmm-yyyy")>
            <cfset Variables.monthEnd3 = DateFormat(DateAdd("d",-2, Variables.monthEnd), "d-mmm-yyyy")>
            <cfset Variables.monthEnd4 = DateFormat(DateAdd("d",-3, Variables.monthEnd), "d-mmm-yyyy")>
            <cfset Variables.monthEnd5 = DateFormat(DateAdd("d",-4, Variables.monthEnd), "d-mmm-yyyy")>
                <b>Last 5 days :    
                <cfset  style="color:yellow;">  
                <cfset  style1="color:black;">
                <cfset  style2="color:orange;">
                <cfset  style3="color:red;">
                <cfset  style4="color:green;">
                <p style="#style#">#Variables.monthEnd# -  #DateFormat(Variables.monthEnd,"dddd")#</p> </b>
                <p style="#style1#">#Variables.monthEnd2# - #DateFormat(Variables.monthEnd2,"dddd")#</p>
                <p style="#style2#">#Variables.monthEnd3# -  #DateFormat(Variables.monthEnd3,"dddd")#</p>
                <p style="#style3#">#Variables.monthEnd4# -  #DateFormat(Variables.monthEnd4,"dddd")#</p>
                <p style="#style4#">#Variables.monthEnd5# -  #DateFormat(Variables.monthEnd5,"dddd")#</p><br>
        </cfoutput>
    </div>  
</body>
</html>
