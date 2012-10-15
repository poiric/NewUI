getWeightData(sessid) ; 10/14/12 6:42pm
 new chart
 ;
 set chart("Weight",1)=10
 set chart("Weight",2)=9
 set chart("Weight",3)=5
 set chart("Weight",4)=2
 set chart("Weight",5)=4.7
 set chart("Date",1)="01/06/2010"
 set chart("Date",2)="01/07/2010"
 set chart("Date",3)="01/08/2010"
 set chart("Date",4)="01/10/2010"
 set chart("Date",5)="01/01/2011"
 do mergeArrayToSession^%zewdAPI(.chart,"weightChart",sessid)
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

