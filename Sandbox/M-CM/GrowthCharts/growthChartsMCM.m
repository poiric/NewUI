getChartData(sessid) ; 10/14/12 5:57pm
 new chart
 ;
 set chart("Weight",1)=10
 set chart("Weight",2)=9
 set chart("Weight",3)=5
 set chart("Weight",4)=2
 set chart("Weight",5)=4.7
 set chart("Height",1)=4
 set chart("Height",2)=3
 set chart("Height",3)=7
 set chart("Height",4)=5
 set chart("Height",5)=7
 set chart("month",1)="Jan"
 set chart("month",2)="Feb"
 set chart("month",3)="Mar"
 set chart("month",4)="Apr"
 set chart("month",5)="May"
 do mergeArrayToSession^%zewdAPI(.chart,"myChart",sessid)
 quit ""
 ;
getChartPoint(sessid) ;
 do copyRequestValueToSession^%zewdAPI("month",sessid)
 do copyRequestValueToSession^%zewdAPI("score",sessid)
 quit ""
