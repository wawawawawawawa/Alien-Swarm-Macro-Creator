#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#InstallKeybdHook
#InstallMouseHook
#SingleInstance force

;// Bind
Gui 99:+LabelASWBind
Gui, ASWBind:Add, Text, , Choose a key for the bind :
Gui, ASWBind:Add, Edit, vMyKey w400 Limit1 gGO
Gui, ASWBind:Add, Text, , Choose a text line :
Gui, ASWBind:Add, Edit, vMyText w400 gGO
Gui, ASWBind:Add, Text, , Choose a voice line :
Gui, ASWBind:Add, DropDownList, w400 AltSubmit vVoiceNumber Choose1 gGO, -2 - None|-1 - miscChat1|0 - acknowledge1|1 - miscChat2|2 - acknowledge2|3 - miscChat3|4 - friendlyFire1|5 - incoming1|6 - moveOut1|7 - holdPosition1|8 - requestAmmo1|9 - noAmmo1|10 - requestMedic1|11 - reloading1|12 - sentryReady1|13 - announceAmmo1|14 - announceMedkit1|15 - thanks1|16 - what1|17 - callSarge1 (Cannot be said by Sarge.)|18 - callJaeger1 (Cannot be said by Jaeger.)|19 - callWildcat1 (Cannot be said by Wildcat.)|20 - callWolfe1 (Cannot be said by Wolfe.)|21 - callFaith1 (Cannot be said by Faith.)|22 - callBastille1 (Cannot be said by Bastille.)|23 - callCrash1 (Cannot be said by Crash.)|24 - callFlynn1|25 - callVegas1 (Cannot be said by Vegas.)|26 - announceSupplies1|27 - announceAmmoSupplies1|28 - terminalLocked1 (Cannot be said by Techs.)|29 - requestTechCrash1 (Cannot be said by Crash.)|30 - requestTechFlynn1|31 - requsetTechVegas1 (Cannot be said by Vegas.)|32 - holdingPosition1|33 - northCovered1|34 - southCovered1|35 - eastCovered1|36 - westCovered1|37 - front1|38 - rear1|39 - requestWeld1|40 - requestUnweld1|41 - requestShootDoor1|42 - announceUnweld1|43 - announceWeld1||44 - announceBiomass|45 - objectiveComplete1|46 - warn1|47 - warnShieldbug1|48 - shootBehind1|49 - warnParasite1|50 - requestParasite1|51 - warnEggs1|52 - warnGrenade1 (Cannot be said by Wildcat.)|53 - requestHostile1|54 - tauntSwarm1|55 - doorBreached1|56 - marineDown1|57 - scream1|58 - scream2|59 - scream3|60 - screamFire1|61 - goodJob1 (Cannot be said by Faith, Jaeger, or Wolfe.)|62 - activateStims1|63 - hurry1 (Can only be said by Sarge, Vegas, and Wildcat.)|64 - goodKillJaeger1 (Can only be said by Sarge.)|65 - goodKillConrad1 (Can only be said by Jaeger.)|66 - goodShotWildcat1 (Can only be said by Wolfe.)|67 - niceShotWolfe1 (Can only be said by Wildcat.)|68 - heroCrash1 (Can only be said by Wildcat.)|69 - heal1 (Can only be said by Medics.)|70 - medsLow1 (Can only be said by Bastille.)|71 - medsOut1 (Can only be said by Medics.)|72 - hacking1 (Can only be said by Techs.)|73 - hacking2 (Can only be said by Techs.)|74 - halfHack1 (Can only be said by Techs.)|75 - hackComplete1 (Can only be said by Techs.)|76 - hackComplete2 (Can only be said by Techs.)|77 - movement1 (Can only be said be Crash.)|78 - surrounded1 (Can only be said by Techs.)|79 - mineDeployed1 (Can only be said by Officers.)|80 - synupCola1 (Can only be said by Techs.)|81 - synupCola2 (Can only be said by Medics.)|82 - cantStand1 (Can only be said by Crash.)|83 - nervousBreakdown1 (Can only be said by Bastille.)|84 - harmsWay1 (Can only be said by Medics.)|85 - dontBlameMe1|86 - steadyNow1 (Can only be said by Bastille.)|87 - painkillers1 (Can only be said by Bastille and Crash.)|88 - tequila1 (Can only be said by Vegas.)|89 - drinking1 (Cannot be said by Vegas.)|90 - aahhMan1 (Can only be said by Vegas.)|91 - screwThatTequila1 (Can only be said by Vegas.)|92 - hellYeah1 (Can only be said by Vegas.)|93 - youGotItWolfe1 (Can only be said by Vegas.)|94 - whoCares1 (Can only be said by Vegas)|95 - (Unused)|96 - doingHere1 (Can only be said by Crash.)|97 - miscChat4 (Can only be said by Bastille, Jaeger, and Sarge.)|98 - takeItEasy1 (Can only be said by Medics.)|99 - reluctantAgreement1|100 - takeItEasy2 (Can only be said by Medics.)|101 - youStillBreathing1 (Can only be said by Jaeger.)|102 - crazy1 (Cannot be said by Sarge and Wolfe.)|103 - swarmDroneClaws1 (Can only be said by Sarge.)|104 - watchYourMouth1 (Can only be said by Crash and Sarge.)|105 - isItDead1 (Can only be said by Crash.)|106 - gettingUgly1 (Can only be said by Crash and Sarge.)|107 - tauntSwarm2 (Can only be said by Wildcat and Wolfe.)|108 - shootEmUp1 (Can only be said by Jaeger, Sarge, Wildcat, and Wolfe.)|109 - imYourHeroCat1 (Can only be said by Wolfe.)|110 - wildcatWolfeBanter1 (Can only be said by Wildcat and Wolfe.)|111 - takingBets1 (Can only be said by Vegas.)|112 - fortuneFavoursVegas1 (Can only be said by Vegas.)|113 - ehJaeger1 (Can only be said by Sarge.)|114 - needADrink1 (Can only be said by Jaeger and Sarge.)|115 - rememberCetiEpsilon1 (Can only be said by Jaeger.)|116 - timeInHell1 (Can only be said by Jaeger and Sarge.)|117 - anotherForMeWolfe1 (Can only be said by Wildcat.)|118 - wildcatWolfeBanter2 (Can only be said by Wildcat and Wolfe.)|119 - wildcatWolfeBanter3 (Can only be said by Wildcat and Wolfe.)|120 - imUnstoppable (Can only be said by Wolfe.)|121 - wildcatWolfeBanter4 (Can only be said by Wildcat and Wolfe.)|122 - wildcatWolfeBanter5 (Can only be said by Wildcat and Wolfe.)|123 - miscChat5 (Can only be said by Bastille, Sarge, and Wolfe.) 
Gui, ASWBind:Add, Text, , Choose an emote :
Gui, ASWBind:Add, DropDownList, w400 AltSubmit vEmoteNumber Choose1 gGO, -1 - None|0 - Medic!|1 - Out of ammo|2 - Smile|3 - Hold position|4 - Follow me|5 - Be careful|6 - Anime smile|7 - What?
Gui, ASWBind:Add, Text, , Choose an action :
Gui, ASWBind:Add, DropDownList, w400 vActionNumber Choose1 gGO, Text Only|ASW_ActivatePrimary|ASW_ActivateSecondary|ASW_DropExtra|asw_suicide|+reload
Gui, ASWBind:Add, Text, , Result Bind Command :
Gui, ASWBind:Add, Edit, vBindresult w400 ReadOnly
Gui, ASWBind:Show
return

GO:
{
	GuiControlGet, MyKey
	GuiControlGet, MyText
	GuiControlGet, VoiceNumber
	GuiControlGet, EmoteNumber
	GuiControlGet, ActionNumber
	VoiceNumber -= 3
	EmoteNumber -= 2
	BindText = 
	BindText = bind "%MyKey%" "
	if (MyText)
	{
		BindText = %BindText%say %MyText%;
	}
	if (VoiceNumber != -2)
	{
		BindText = %BindText%cl_chatter %VoiceNumber%; 
	}
	if (EmoteNumber != -1)
	{
		BindText = %BindText%cl_emote %EmoteNumber%; 
		if (EmoteNumber = 3)
		{
			BindText = %BindText%asw_orderMarinesHold;
		}
		if (EmoteNumber = 4)
		{
			BindText = %BindText%asw_orderMarinesFollow;
		}
	}
	if (ActionNumber != "Text Only")
	{
		BindText = %BindText%%ActionNumber%; 
	}
	BindText = %BindText%"
	BindText := StrReplace(BindText, ";" , "; ")
	BindText := StrReplace(BindText, "; """ , ";""")
	GuiControl, ASWBind:, Bindresult, %BindText%
}
return

;;;;;;;;;;;;;;				EMERGENCY EXIT					;;;;;;;;;;;;;;;;;;;;;;

^F8:: ; CTRL + F8 to close the script manually
{
	ExitApp
}
return

^F9:: ; CTRL + F8 to close the script manually
{
	Reload
}
return
