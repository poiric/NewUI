getTreeMenu(sessid)
 n menu
 ;
 s menu(1,"text")="1 ENTER OR EDIT FILE ENTRIES"
 s menu(1,"nvp")="Item=1"
 s menu(2,"text")="2 PRINT FILE ENTRIES"
 s menu(2,"nvp")="Item=2"
 s menu(3,"text")="3 SEARCH FILE ENTRIES"
 s menu(3,"nvp")="Item=3"
 s menu(4,"text")="4 MODIFY FILE ATTRIBUTES"
 s menu(4,"nvp")="Item=4"
 s menu(5,"text")="5 INQUIRE TO FILE ENTRIES"
 s menu(5,"nvp")="Item=5"
 s menu(6,"text")="6 UTILITY FUNCTIONS"
 s menu(6,"nvp")="Item=6"
 s menu(7,"text")="7 OTHER OPTIONS"
 s menu(7,"nvp")="Item=7"
 s menu(8,"text")="8 DATA DICTIONNARY UTILITIES"
 s menu(8,"nvp")="Item=8"
 s menu(9,"text")="9 TRANSFER ENTRIES"
 s menu(9,"nvp")="Item=9"
 d mergeArrayToSession^%zewdAPI(.menu,"myTreeMenu",sessid)
 QUIT ""

panel4(sessid)
 n html,item,level
 s item=$$getRequestValue^%zewdAPI("item",sessid)
 s level=$$getRequestValue^%zewdAPI("level",sessid)
 s html="&lt;h3>You Selected:&lt;/h3>&lt;div>Item: "_item_"&lt;/div>&lt;div>Level: "_level_"&lt;/div>"
 d setSessionValue^%zewdAPI("response",html,sessid)
 QUIT ""
 ;
