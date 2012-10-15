createDB() ; 10/14/12 7:27pm
 kill ^zmcmData
 new ^zmcmData
 set ^zmcmData("nextChild")=0
 set ^zmcmData("children")=""
 quit ""
 ;
addChild(name,dateOfBirth) ;
 set nextChild=^zmcmData("nextChild")
 set ^zmcmData("children",nextChild,"name")=""
 set ^zmcmData("children",nextChild,"name","first")=name("first")
 set ^zmcmData("children",nextChild,"name","middle")=name("middle")
 set ^zmcmData("children",nextChild,"name","last")=name("last")
 set ^zmcmData("children",nextChild,"dateOfBirth")=dateOfBirth
 set ^zmcmData("children",nextChild,"measurements")=""
 set ^zmcmData("children",nextChild,"measurements","weigth")=""
 set ^zmcmData("children",nextChild,"measurements","height")=""
 set ^zmcmData("children",nextChild,"measurements","headCircumference")=""
 set ^zmcmData("nextChild")=nextChild+1
 quit ""
 ;
addWeightMeasurement(childId,date,weight) ;
 set ^zmcmData("children",nextChild,"measurements","weigth",date)=weight
 quit ""
 ;
addHeightMeasurement(childId,date,height) ;
 set ^zmcmData("children",nextChild,"measurements","heigth",date)=height
 quit ""
 ;
addHeadCircMeasurement(childId,date,headCircumference) ;
 set ^zmcmData("children",nextChild,"measurements","headCircumference",date)=headCircumference
 quit ""
 ;
