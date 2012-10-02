getTreeMenu(sessid)
 n menu
 ;
 s menu(1,"text")="Option 1"
 s menu(1,"nvp")="Item=1"
 s menu(2,"text")="Option 2"
 s menu(2,"nvp")="Item=2"
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
