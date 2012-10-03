getListData(sessid) ; 10/3/12 2:48pm
 n data,i
 ;
 s data(1,"text")="1 ENTER OR EDIT FILE ENTRIES"
 s data(1,"nvp")="Item=1"
 s data(2,"text")="2 PRINT FILE ENTRIES"
 s data(2,"nvp")="Item=2"
 s data(3,"text")="3 SEARCH FILE ENTRIES"
 s data(3,"nvp")="Item=3"
 s data(4,"text")="4 MODIFY FILE ATTRIBUTES"
 s data(4,"nvp")="Item=4"
 s data(5,"text")="5 INQUIRE TO FILE ENTRIES"
 s data(5,"nvp")="Item=5"
 s data(6,"text")="6 UTILITY FUNCTIONS"
 s data(6,"nvp")="Item=6"
 s data(7,"text")="7 OTHER OPTIONS"
 s data(7,"nvp")="Item=7"
 s data(8,"text")="8 DATA DICTIONNARY UTILITIES"
 s data(8,"nvp")="Item=8"
 s data(9,"text")="9 TRANSFER ENTRIES"
 s data(9,"nvp")="Item=9"

 do mergeArrayToSession^%zewdAPI(.data,"myList",sessid)
 QUIT ""
 ;
