getSexList(sessid) ; 11/10/12 5:27pm
 ;
 do clearList^%zewdAPI("sex",sessid)
 do appendToList^%zewdAPI("sex","Male","male",sessid)
 do appendToList^%zewdAPI("sex","Female","female",sessid)
 do setSessionValue^%zewdAPI("sex","male",sessid)
 ;
 QUIT ""
 ;
validateNewParticipant(sessid) ;
 ; 
 s value=$$getSessionValue^%zewdAPI("rank",sessid)
 ;
 QUIT ""
