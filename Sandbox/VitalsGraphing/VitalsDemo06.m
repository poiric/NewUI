checkForm(sessid) ; 10/14/12 5:05pm
 do setSessionValue^%zewdAPI("html","Errors in form",sessid)
 new accessCode
 new verifyCode
 set accessCode=$$getSessionValue^%zewdAPI("accessCode",sessid)
 set verifyCode=$$getSessionValue^%zewdAPI("verifyCode",sessid)
 write "Access Code= ",accessCode,!
 write "Verify Code= ",verifyCode,!
 ;
 do setFieldErrorAlert^%zewdExt4Code("Form Error !","Incorrect input",sessid)
 do clearFieldErrors^%zewdExt4Code(sessid)
 if accessCode="" do setFieldError^%zewdExt4Code("accessCode","You must enter an Access Code",sessid)
 if verifyCode="" do setFieldError^%zewdExt4Code("verifyCode","You must enter a Verify Code",sessid)
 if '$$isFormErrors^%zewdExt4Code(sessid) do setSessionValue^%zewdAPI("html","Form validated OK",sessid)
 ; quit using the special function
 QUIT $$formErrors^%zewdExt4Code(sessid)

