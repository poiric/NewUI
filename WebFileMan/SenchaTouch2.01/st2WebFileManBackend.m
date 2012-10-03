getListData(sessid) ; 10/3/12 2:48pm
 n data,i
 ;
 for i=1:1:20 set data(i,"text")="Item "_i
 do mergeArrayToSession^%zewdAPI(.data,"myList",sessid)
 QUIT ""
 ;
