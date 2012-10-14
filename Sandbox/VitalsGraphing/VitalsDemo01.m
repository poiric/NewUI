getChartData(sessid) ; 10/13/12 8:22pm
 new chart
 ;
 set chart("line1",1)=10
 set chart("line1",2)=9
 set chart("line1",3)=5
 set chart("line1",4)=2
 set chart("line1",5)=4.7
 set chart("month",1)="Jan"
 set chart("month",2)="Feb"
 set chart("month",3)="Mar"
 set chart("month",4)="Apr"
 set chart("month",5)="May"
 do mergeArrayToSession^%zewdAPI(.chart,"myChart",sessid)
 quit ""

