getChartData(sessid) ; 10/14/12 10:24am
 new chart
 ;
 set chart("line1",1)=10
 set chart("line1",2)=9
 set chart("line1",3)=5
 set chart("line1",4)=2
 set chart("line1",5)=4.7
 set chart("line2",1)=4
 set chart("line2",2)=3
 set chart("line2",3)=7
 set chart("line2",4)=5
 set chart("line2",5)=7
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
