getChartData(sessid) ; 10/14/12 6:27pm
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
 do mergeArrayToSession^%zewdAPI(.chart,"myChart",sessid)
 quit ""

