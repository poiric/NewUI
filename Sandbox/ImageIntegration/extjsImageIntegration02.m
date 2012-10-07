getImageURL(sessid) ; 10/7/12 5:58pm
 set baseURL="http://www.healthimaginghub.com/images/stories/teaching-files/"
 set baseImageName="Neuro_case13_"
 set imageNumber=12 ; this image set goes from 0 to 22
 set imageExtension=".jpg"
 set imageFullURL=baseURL_baseImageName_imageNumber_imageExtension
 do setSessionValue^%zewdAPI("myImageURL",imageFullURL,sessid)
 quit ""
