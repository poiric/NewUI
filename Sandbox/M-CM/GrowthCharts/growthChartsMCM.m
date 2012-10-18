getWeightData(sessid) ; 10/18/12 3:26am
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
 . set heightEntry=^zmcmData("children",0,"measurements","height",measureDate)
 . set daysOfLife=measureDate-dateOfBirth
 . set chart("Height",daysOfLife)=heightEntry
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
