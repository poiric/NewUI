test001() ; 10/14/12 7:27pm
 do createDB^databaseMCM
 set name("first")="John01"
 set name("last")="Smith01"
 set dateOfBirth=$$FUNC^%DATE("10/20/2005")
 do addChild^databaseMCM(name,dateOfBirth)
 set name("first")="John02"
 set name("last")="Smith02"
 set dateOfBirth=$$FUNC^%DATE("11/22/2004")
 do addChild^databaseMCM(name,dateOfBirth)
 do addWeightMeasurement^databaseMCM("12/20/2005",25.4)
 do addWeightMeasurement^databaseMCM("05/10/2006",35.6)
 quit ""

