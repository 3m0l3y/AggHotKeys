#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; This script will popup a menu for selecting tokens that can be inserted into screen-scraper

; Highlight the text you want to replace, then click win+z

#Persistent

; Create another menu destined to become a submenu of the main menu.

Menu, Submenu1, Add, STORE_NUMBER, MenuHandler
Menu, Submenu1, Add, STORE_ID, MenuHandler
Menu, Submenu1, Add, STORE_NODE, MenuHandler
Menu, Submenu1, Add, STORE_CODE, MenuHandler
Menu, Submenu1, Add, STORE_NAME, MenuHandler
Menu, Submenu1, Add, STORE_TYPE, MenuHandler
Menu, Submenu1, Add, STORE_LOCATION, MenuHandler
Menu, Submenu1, Add, STORE_HOURS, MenuHandler

Menu, Submenu2, Add, SUN_OPEN, MenuHandler
Menu, Submenu2, Add, SUN_CLOSE, MenuHandler
Menu, Submenu2, Add, MON_OPEN, MenuHandler
Menu, Submenu2, Add, MON_CLOSE, MenuHandler
Menu, Submenu2, Add, TUE_OPEN, MenuHandler
Menu, Submenu2, Add, TUE_CLOSE, MenuHandler
Menu, Submenu2, Add, WED_OPEN, MenuHandler
Menu, Submenu2, Add, WED_CLOSE, MenuHandler
Menu, Submenu2, Add, THU_OPEN, MenuHandler
Menu, Submenu2, Add, THU_CLOSE, MenuHandler
Menu, Submenu2, Add, FRI_OPEN, MenuHandler
Menu, Submenu2, Add, FRI_CLOSE, MenuHandler
Menu, Submenu2, Add, SAT_OPEN, MenuHandler
Menu, Submenu2, Add, SAT_CLOSE, MenuHandler


Menu, Submenu3, Add, SUN_HOURS, MenuHandler
Menu, Submenu3, Add, MON_HOURS, MenuHandler
Menu, Submenu3, Add, TUE_HOURS, MenuHandler
Menu, Submenu3, Add, WED_HOURS, MenuHandler
Menu, Submenu3, Add, THU_HOURS, MenuHandler
Menu, Submenu3, Add, FRI_HOURS, MenuHandler
Menu, Submenu3, Add, SAT_HOURS, MenuHandler



Menu, MyMenu, Add, DATARECORD, MenuHandler


; Create a submenu in the first menu (a right-arrow indicator). When the user selects it, the second menu is displayed.

Menu, MyMenu, Add, STORE..., :Submenu1


; Create the main popup menu
Menu, MyMenu, Add, ADDRESS, MenuHandler
Menu, MyMenu, Add, ADDRESS_LINE_2, MenuHandler
Menu, MyMenu, Add, FULL_ADDRESS, MenuHandler
Menu, MyMenu, Add, CITY, MenuHandler
Menu, MyMenu, Add, STATE, MenuHandler
Menu, MyMenu, Add, ZIP_CODE, MenuHandler
Menu, MyMenu, Add, COUNTRY_CODE, MenuHandler
Menu, MyMenu, Add, COUNTRY, MenuHandler
Menu, MyMenu, Add, PHONE_NUMBER, MenuHandler
Menu, MyMenu, Add, FAX_NUMBER, MenuHandler
Menu, MyMenu, Add, STORE_HOURS, MenuHandler
Menu, MyMenu, Add, EMAIL_ADDRESS, MenuHandler
Menu, MyMenu, Add, WEBSITE, MenuHandler
Menu, MyMenu, Add, PHARMACY_HOURS, MenuHandler

Menu, MyMenu, Add, STORE_HOURS/OPEN CLOSE..., :Submenu2
Menu, MyMenu, Add, STORE_HOURS DAYS..., :Submenu3

Menu, MyMenu, Add, REGION, MenuHandler
Menu, MyMenu, Add, LOCALITY, MenuHandler
Menu, MyMenu, Add, LATITUDE, MenuHandler
Menu, MyMenu, Add, LONGITUDE, MenuHandler
Menu, MyMenu, Add  ; Add a separator line.


Menu, MyMenu, Add  ; Add a separator line below the submenu.


; Add another menu item beneath the main menu.
Menu, MyMenu, Add, DETAILS_LINK, MenuHandler
Menu, MyMenu, Add, WS, MenuHandler
Menu, MyMenu, Add, IGG, MenuHandler
Menu, MyMenu, Add, SLUG, MenuHandler
  

return  ; End of script's auto-execute section.



MenuHandler:
; MsgBox You selected %A_ThisMenuItem% from the menu %A_ThisMenu%. 
  Send, ~@%A_ThisMenuItem%@~
return



; ~LButton & RButton::Menu, MyMenu, Show  ; i.e. press the left and right mouse buttons at the same time to show the menu.

;#z::Menu, MyMenu, Show  ; i.e. press the Win-Z hotkey to show the menu.

LShift & LAlt::Menu, MyMenu, Show  ; Changed the combination keys because my new keyboard doesn't align well with win + z keys
