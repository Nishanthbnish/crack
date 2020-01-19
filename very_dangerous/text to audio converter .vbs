dim msg,spi
msg=inputbox("enter your text for conversion-www.sonuandtechnology.blogspot.com","sonuandtechnology text-to-audio converter")
set sapi=createobject("sapi.spvoice")
sapi.speak msg