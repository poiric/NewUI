getChartDef(sessid) ; 10/14/12 2:52pm
 new chartDef
 ;
 if $$getChartData(sessid) ; create the data Session Array (see below)
 ;
 ; create axis 1:
 ;
 set chartDef("axes",1,"type")="Numeric"
 set chartDef("axes",1,"position")="left"
 set chartDef("axes",1,"title")="Number of hits"
 set chartDef("axes",1,"grid")="true"
 set chartDef("axes",1,"minimum")="0"
 set chartDef("axes",1,"fields",1)="data1"
 set chartDef("axes",1,"fields",2)="data2"
 set chartDef("axes",1,"fields",3)="data3"
 set chartDef("axes",1,"fields",4)="data4"
 set chartDef("axes",1,"fields",5)="data5"
 set chartDef("axes",1,"grid","opacity")="1"
 set chartDef("axes",1,"grid","fill")="#ddd"
 set chartDef("axes",1,"grid","stroke")="#bbb"
 set chartDef("axes",1,"grid","stroke-width")="1"
 ;
 ; create axis 2:
 ;
 set chartDef("axes",2,"type")="Category"
 set chartDef("axes",2,"position")="bottom"
 set chartDef("axes",2,"fields",1)="name"
 set chartDef("axes",2,"grid")="true"
 set chartDef("axes",2,"title")="Month of the Year"
 set chartDef("axes",2,"label","rotate","degrees")="315"
 ;
 ; create the series definition:
 ;
 set chartDef("series",1,"type")="area"
 set chartDef("series",1,"highlight")="false"
 set chartDef("series",1,"axis")="left"
 set chartDef("series",1,"xField")="name"
 set chartDef("series",1,"yField",1)="data1"
 set chartDef("series",1,"yField",2)="data2"
 set chartDef("series",1,"yField",3)="data3"
 set chartDef("series",1,"yField",4)="data4"
 set chartDef("series",1,"yField",5)="data5"
 set chartDef("series",1,"style","opacity")=0.93
 ;
 ; finally define the legend:
 ;
 set chartDef("legend","position")="bottom"
 ;
 ; save the array to the EWD Session:
 do mergeArrayToSession^%zewdAPI(.chartDef,"myChartDef",sessid)
 zwrite chartDef
 QUIT ""
 ;
getChartData(sessid)
 new chart,i
 set chart("data1",1)=10
 set chart("data1",2)=7
 set chart("data1",3)=5
 set chart("data1",4)=2
 set chart("data1",5)=4
 set chart("name",1)="metric 1"
 set chart("name",2)="metric 2"
 set chart("name",3)="metric 3"
 set chart("name",4)="metric 4"
 set chart("name",5)="metric 5"
 set chart("data2",1)=12
 set chart("data2",2)=8
 set chart("data2",3)=2
 set chart("data2",4)=14
 set chart("data2",5)=4
 for i=1:1:5 set chart("data3",i)=$random(20)
 for i=1:1:5 set chart("data4",i)=$random(20)
 for i=1:1:5 set chart("data5",i)=$random(20)
 do mergeArrayToSession^%zewdAPI(.chart,"myChart",sessid)
 zwrite chart
 QUIT ""
 ;
