#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#IfWinActive screen-scraper workbench - Enterprise Edition


#Hotstring C


:*:storenumber::
  Send, ~@STORE_NUMBER@~
Return


:*:storetype::
  Send, ~@STORE_TYPE@~
Return


:*:storeid::
  Send, ~@STORE_ID@~
Return


:*:storename::
  Send, ~@STORE_NAME@~
Return


:*:address::
  Send, ~@ADDRESS@~
Return


:*:city::
  Send, ~@CITY@~
Return


:*:state::
  Send, ~@STATE@~
Return


:*:zip::
  Send, ~@ZIP@~
Return


:*:phone::
  Send, ~@PHONE@~
Return


:*:fax::
  Send, ~@FAX@~
Return


:*:storehours::
  Send, ~@STORE_HOURS@~
Return


:*:email::
  Send, ~@EMAIL@~
Return


:*:website::
  Send, ~@WEBSITE@~
Return


:*:pharmhours::
  Send, ~@PHARM_HOURS@~
Return


:*:region::
  Send, ~@REGION@~
Return


:*:locality::
  Send, ~@LOCALITY@~
Return


:*:country::
  Send, ~@COUNTRY@~
Return


:*:storelocation::
  Send, ~@STORE_LOCATION@~
Return


:*:datarecord::
  Send, ~@DATARECORD@~
Return


:*:latitude::
  Send, ~@LATITUDE@~
Return


:*:longitude::
  Send, ~@LONGITUDE@~
Return


:*:slug::
  Send, ~@SLUG@~
Return


:*:detailslink::
  Send, ~@DETAILS_LINK@~
Return


:*:igg::
  Send, ~@IGG@~
Return


:*:ws::
  Send, ~@WS@~
Return

Return
#IfWinActive

