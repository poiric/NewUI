getChieldHeader(sessid) ; 10/18/12 4:13am
 new dateOfBirth
 new firstName
 new lastName
 new childName
 new childData
 new dateOfBirthNumeric
 new dateOfBirthText
 set dateOfBirthNumeric=^zmcmData("children",0,"dateOfBirth")
 set dateOfBirthText=$ZDATE(dateOfBirthNumeric)
 ;
 set firstName=^zmcmData("children",0,"name","first")
 set lastName=^zmcmData("children",0,"name","last")
 set childName=firstName_" "_lastName
 set childData="Name: "_childName_"       Date of Birth: "_dateOfBirthText
 do setSessionValue^%zewdAPI("childData",childData,sessid)
 kill childName
 kill lastName
 kill firstName
 kill dateOfBirth
 kill childData
 quit ""
 ;
getWeightData(sessid) ; 10/18/12 3:44am
 new chart
 new childId
 new measureDate
 set childId=0
 new dateOfBirth
 new daysOfLife
 set dateOfBirth=^zmcmData("children",0,"dateOfBirth")
 set measureDate=""
 for  set measureDate=$ORDER(^zmcmData("children",childId,"measurements","weight",measureDate))  quit:measureDate=""  do
 . set measurement=^zmcmData("children",0,"measurements","weight",measureDate)
 . set daysOfLife=measureDate-dateOfBirth
 . set chart("Weight",daysOfLife)=measurement
 . set chart("Date",daysOfLife)=daysOfLife
 do mergeArrayToSession^%zewdAPI(.chart,"weightChart",sessid)
 kill childId
 kill measureDate
 kill dateOfBirth
 kill daysOfLife
 quit ""
 ;
getHeightData(sessid) ; 10/18/12 3:22am
 new chart
 new childId
 new measureDate
 set childId=0
 new dateOfBirth
 new daysOfLife
 set dateOfBirth=^zmcmData("children",0,"dateOfBirth")
 set measureDate=""
 for  set measureDate=$ORDER(^zmcmData("children",childId,"measurements","height",measureDate))  quit:measureDate=""  do
 . set measurement=^zmcmData("children",0,"measurements","height",measureDate)
 . set daysOfLife=measureDate-dateOfBirth
 . set chart("Height",daysOfLife)=measurement
 . set chart("Date",daysOfLife)=daysOfLife
 do mergeArrayToSession^%zewdAPI(.chart,"heightChart",sessid)
 kill childId
 kill measureDate
 kill dateOfBirth
 kill daysOfLife
 quit ""
 ;
getHeadCircData(sessid) ; 10/14/12 6:36pm
 new chart
 new childId
 new measureDate
 set childId=0
 new dateOfBirth
 new daysOfLife
 set dateOfBirth=^zmcmData("children",0,"dateOfBirth")
 set measureDate=""
 for  set measureDate=$ORDER(^zmcmData("children",childId,"measurements","headCircumference",measureDate))  quit:measureDate=""  do
 . set measurement=^zmcmData("children",0,"measurements","headCircumference",measureDate)
 . set daysOfLife=measureDate-dateOfBirth
 . set chart("HeadCirc",daysOfLife)=measurement
 . set chart("Date",daysOfLife)=daysOfLife
 do mergeArrayToSession^%zewdAPI(.chart,"headcircChart",sessid)
 kill childId
 kill measureDate
 kill dateOfBirth
 kill daysOfLife
 quit ""
 ;
