getWeightData(sessid) ; 10/18/12 3:10am
 new chart
 new childId
 new weightDate
 set childId=0
 new dateOfBirth
 new daysOfLife
 set dateOfBirth=^zmcmData("children",0,"dateOfBirth")
 set weightDate=""
 for  set weightDate=$ORDER(^zmcmData("children",childId,"measurements","weight",weightDate))  quit:weightDate=""  do
 . set weightEntry=^zmcmData("children",0,"measurements","weight",weightDate)
 . set daysOfLife=weightDate-dateOfBirth
 . set chart("Weight",daysOfLife)=weightEntry
 . set chart("Date",daysOfLife)=daysOfLife
 do mergeArrayToSession^%zewdAPI(.chart,"weightChart",sessid)
 kill childId
 kill weightDate
 kill dateOfBirth
 kill daysOfLife
 quit ""
 ;
getHeadCircData(sessid) ; 10/14/12 6:36pm
 new chart
 ;
 set chart("HeadCirc",1)=10
 set chart("HeadCirc",2)=9
 set chart("HeadCirc",3)=5
 set chart("HeadCirc",4)=2
 set chart("HeadCirc",5)=4.7
 set chart("Date",1)="01/06/2010"
 set chart("Date",2)="01/07/2010"
 set chart("Date",3)="01/08/2010"
 set chart("Date",4)="01/10/2010"
 set chart("Date",5)="01/01/2011"
 do mergeArrayToSession^%zewdAPI(.chart,"headcircChart",sessid)
 quit ""

getHeightData(sessid) ; 10/14/12 6:32pm
 new chart
 ;
 set chart("Height",1)=10
 set chart("Height",2)=9
 set chart("Height",3)=5
 set chart("Height",4)=2
 set chart("Height",5)=4.7
 set chart("Date",1)="01/06/2010"
 set chart("Date",2)="01/07/2010"
 set chart("Date",3)="01/08/2010"
 set chart("Date",4)="01/10/2010"
 set chart("Date",5)="01/01/2011"
 do mergeArrayToSession^%zewdAPI(.chart,"heightChart",sessid)
 quit ""
 ;

