getGridData(sessid)
;
n data
;
s data(1,"participant")="Participant 1"
s data(1,"sex")="Male"
s data(1,"age beyond 3")="Yes"
d deleteFromSession^%zewdAPI("Table",sessid)
d mergeArrayToSession^%zewdAPI(.data,"Table",sessid)
;
QUIT ""