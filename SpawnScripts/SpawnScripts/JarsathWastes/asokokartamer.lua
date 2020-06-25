--[[
	Script Name	: SpawnScripts/JarsathWastes/asokokartamer.lua
	Script Purpose	: a sokokar Tamer (2650089)
	Script Author	: Neatz09
	Script Date	: 4/20/2019
	Script Notes	: 
--]]

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1042.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like to travel.", "dlg_1_1")
		AddConversationOption(conversation, "Nowhere.")
		StartConversation(conversation, NPC, Spawn, "Greetings traveler, how can I assist you today?")
	end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local con = CreateConversation()
    
	if GetSpawnLocationID(NPC) == 587011	 then
		--Danak Shipyards--
		AddConversationOption(con, "To Howling Stones.", "DanakToHowl")
		AddConversationOption(con, "To Sel'Nok Camp.", "DanakToSel")
		AddConversationOption(con, "To Skleross Encampment.", "DanakToRoss")
		AddConversationOption(con, "To Skyfire Mountains.", "DanakToSky")
		AddConversationOption(con, "To Stonehoof Badlands.", "DanakToBadland")
		AddConversationOption(con, "To Temple of Red Lord.", "DanakToRed")
		AddConversationOption(con, "To Temple of White Lady.", "DanakToWhite")
	elseif GetSpawnLocationID(NPC) == 587012 then
		--Howling Stones--
		AddConversationOption(con, "To Danak Shipyards", "HowlToDanak")
		AddConversationOption(con, "To Sel'Nok Camp.", "HowlToSel")
		AddConversationOption(con, "To Skleross Encampment.", "HowlToRoss")
		AddConversationOption(con, "To Skyfire Mountains.", "HowlToSky")
		AddConversationOption(con, "To Stonehoof Badlands.", "HowlToBadland")
		AddConversationOption(con, "To Temple of Red Lord.", "HowlToRed")
		AddConversationOption(con, "To Temple of White Lady.", "HowlToWhite")
	elseif GetSpawnLocationID(NPC) == 587007 then
		--Sel'Nok Camp--
		AddConversationOption(con, "To Danak Shipyards", "SelToDanak")
		AddConversationOption(con, "To Howling Stones.", "SelToHowl")
		AddConversationOption(con, "To Skleross Encampment.", "SelToRoss")
		AddConversationOption(con, "To Skyfire Mountains.", "SelToSky")
		AddConversationOption(con, "To Stonehoof Badlands.", "SelToBadland")
		AddConversationOption(con, "To Temple of Red Lord.", "SelToRed")
		AddConversationOption(con, "To Temple of White Lady.", "SelToWhite")
	elseif GetSpawnLocationID(NPC) == 587010 then
		--Skleross Encampment--
	    AddConversationOption(con, "To Danak Shipyards", "RossToDanak")
		AddConversationOption(con, "To Howling Stones.", "RossToHowl")
		AddConversationOption(con, "To Sel'Nok Camp.", "RossToSel")
		AddConversationOption(con, "To Skyfire Mountains.", "RossToSky")
		AddConversationOption(con, "To Stonehoof Badlands.", "RossToBadland")
		AddConversationOption(con, "To Temple of Red Lord.", "RossToRed")
		AddConversationOption(con, "To Temple of White Lady.", "RossToWhite")
	elseif GetSpawnLocationID(NPC) == 587009 then
		--Skyfire Mountains--
	    AddConversationOption(con, "To Danak Shipyards", "SkyToDanak")
		AddConversationOption(con, "To Howling Stones.", "SkyToHowl")
		AddConversationOption(con, "To Sel'Nok Camp.", "SkyToSel")
		AddConversationOption(con, "To Skleross Encampment.", "SkyToRoss")
		AddConversationOption(con, "To Stonehoof Badlands.", "SkyToBadland")
		AddConversationOption(con, "To Temple of Red Lord.", "SkyToRed")
		AddConversationOption(con, "To Temple of White Lady.", "SkyToWhite")
	elseif GetSpawnLocationID(NPC) == 587008 then
		--Stonehoof Badlands--
		AddConversationOption(con, "To Danak Shipyards", "BadlandToDanak")
		AddConversationOption(con, "To Howling Stones.", "BadlandToHowl")
		AddConversationOption(con, "To Sel'Nok Camp.", "BadlandToSel")
		AddConversationOption(con, "To Skleross Encampment.", "BadlandToRoss")
		AddConversationOption(con, "To Skyfire Mountains.", "BadlandToSky")
		AddConversationOption(con, "To Temple of Red Lord.", "BadlandToRed")
		AddConversationOption(con, "To Temple of White Lady.", "BadlandToWhite")
	elseif GetSpawnLocationID(NPC) == 587005 then
		--Temple of Red Lord--
		AddConversationOption(con, "To Danak Shipyards", "RedToDanak")
		AddConversationOption(con, "To Howling Stones.", "RedToHowl")
		AddConversationOption(con, "To Sel'Nok Camp.", "RedToSel")
		AddConversationOption(con, "To Skleross Encampment.", "RedToRoss")
		AddConversationOption(con, "To Skyfire Mountains.", "RedToSky")
		AddConversationOption(con, "To Stonehoof Badlands.", "RedToBadland")
		AddConversationOption(con, "To Temple of White Lady.", "RedToWhite")
	elseif GetSpawnLocationID(NPC) == 587006 then
		--Temple of Red Lord--
		AddConversationOption(con, "To Danak Shipyards", "WhiteToDanak")
		AddConversationOption(con, "To Howling Stones.", "WhiteToHowl")
		AddConversationOption(con, "To Sel'Nok Camp.", "WhiteToSel")
		AddConversationOption(con, "To Skleross Encampment.", "WhiteToRoss")
		AddConversationOption(con, "To Skyfire Mountains.", "WhiteToSky")
		AddConversationOption(con, "To Stonehoof Badlands.", "WhiteToBadland")
		AddConversationOption(con, "To Temple of Red Lord.", "WhiteToRed")
	else
		PlayFlavor(NPC, "", "Not implemented yet!", "cry", 0, 0, Spawn)
	end
	AddConversationOption(con, "Nowhere.")
	StartConversation(con, NPC, Spawn, "Where to?")
end

function DanakToHowl(NPC, Spawn)
	StartAutoMount(Spawn, 345)
	SetMount(Spawn, 7253)
end

function DanakToSel(NPC, Spawn)
	StartAutoMount(Spawn, 373)
	SetMount(Spawn, 7253)
end

function DanakToRoss(NPC, Spawn)
	StartAutoMount(Spawn, 376)
	SetMount(Spawn, 7253)
end

function DanakToBadland(NPC, Spawn)
	StartAutoMount(Spawn, 372)
	SetMount(Spawn, 7253)
end

function DanakToRed(NPC, Spawn)
	StartAutoMount(Spawn, 374)
	SetMount(Spawn, 7253)
end

function DanakToWhite(NPC, Spawn)
	StartAutoMount(Spawn, 375)
	SetMount(Spawn, 7253)
end

function HowlToDanak(NPC, Spawn)
	StartAutoMount(Spawn, 341)
	SetMount(Spawn, 7253)
end

function HowlToSel(NPC, Spawn)
	StartAutoMount(Spawn, 377)
	SetMount(Spawn, 7253)
end

function HowlToRoss(NPC, Spawn)
	StartAutoMount(Spawn, 342)
	SetMount(Spawn, 7253)
end

function HowlToSky(NPC, Spawn)
	StartAutoMount(Spawn, 344)
	SetMount(Spawn, 7253)
end

function HowlToBadland(NPC, Spawn)
	StartAutoMount(Spawn, 343)
	SetMount(Spawn, 7253)
end

function HowlToRed(NPC, Spawn)
	StartAutoMount(Spawn, 378)
	SetMount(Spawn, 7253)
end

function HowlToWhite(NPC, Spawn)
	StartAutoMount(Spawn, 379)
	SetMount(Spawn, 7253)
end

function SelToDanak(NPC, Spawn)
	StartAutoMount(Spawn, 391)
	SetMount(Spawn, 7253)
end

function SelToHowl(NPC, Spawn)
	StartAutoMount(Spawn, 389)
	SetMount(Spawn, 7253)
end

function SelToRoss(NPC, Spawn)
	StartAutoMount(Spawn, 392)
	SetMount(Spawn, 7253)
end

function SelToBadland(NPC, Spawn)
	StartAutoMount(Spawn, 388)
	SetMount(Spawn, 7253)
end

function SelToRed(NPC, Spawn)
	StartAutoMount(Spawn, 360)
	SetMount(Spawn, 7253)
end

function SelToWhite(NPC, Spawn)
	StartAutoMount(Spawn, 390)
	SetMount(Spawn, 7253)
end

function RossToDanak(NPC, Spawn)
	StartAutoMount(Spawn, 396)
	SetMount(Spawn, 7253)
end

function RossToHowl(NPC, Spawn)
	StartAutoMount(Spawn, 362)
	SetMount(Spawn,7253)
end

function RossToSel(NPC, Spawn)
	StartAutoMount(Spawn, 393)
	SetMount(Spawn, 7253)
end

function RossToSky(NPC, Spawn)
	StartAutoMount(Spawn, 364)
	SetMount(Spawn, 7253)
end

function RossToBadland(NPC, Spawn)
	StartAutoMount(Spawn, 363)
	SetMount(Spawn, 7253)
end

function RossToRed(NPC, Spawn)
	StartAutoMount(Spawn, 394)
	SetMount(Spawn, 7253)
end

function RossToWhite(NPC, Spawn)
	StartAutoMount(Spawn, 395)
	SetMount(Spawn,7253)
end

function SkyToDanak(NPC, Spawn)
	StartAutoMount(Spawn, 350)
	SetMount(Spawn, 7253)
end

function SkyToHowl(NPC, Spawn)
	StartAutoMount(Spawn, 354)
	SetMount(Spawn, 7253)
end

function SkyToSel(NPC, Spawn)
	StartAutoMount(Spawn, 351)
	SetMount(Spawn, 7253)
end

function SkyToRoss(NPC, Spawn)
	StartAutoMount(Spawn, 352)
	SetMount(Spawn, 7253)
end

function SkyToBadland(NPC, Spawn)
	StartAutoMount(Spawn, 348)
	SetMount(Spawn, 7253)
end

function SkyToRed(NPC, Spawn)
	StartAutoMount(Spawn, 349)
	SetMount(Spawn, 7253)
end

function SkyToWhite(NPC, Spawn)
	StartAutoMount(Spawn, 353)
	SetMount(Spawn, 7253)
end

function BadlandToDanak(NPC, Spawn)
	StartAutoMount(Spawn, 383)
	SetMount(Spawn, 7253)
end

function BadlandToHowl(NPC, Spawn)
	StartAutoMount(Spawn, 338)
	SetMount(Spawn, 7253)
end

function BadlandToSel(NPC, Spawn)
	StartAutoMount(Spawn, 380)
	SetMount(Spawn, 7253)
end

function BadlandToRoss(NPC, Spawn)
	StartAutoMount(Spawn, 340)
	SetMount(Spawn, 7253)
end

function BadlandToSky(NPC, Spawn)
	StartAutoMount(Spawn, 339)
	SetMount(Spawn, 7253)
end

function BadlandToRed(NPC, Spawn)
	StartAutoMount(Spawn, 381)
	SetMount(Spawn, 7253)
end

function BadlandToWhite(NPC, Spawn)
	StartAutoMount(Spawn, 382)
	SetMount(Spawn, 7253)
end

function RedToDanak(NPC, Spawn)
	StartAutoMount(Spawn, 386)
	SetMount(Spawn, 7253)
end

function RedToHowl(NPC, Spawn)
	StartAutoMount(Spawn, 385)
	SetMount(Spawn, 7253)
end

function RedToSel(NPC, Spawn)
	StartAutoMount(Spawn, 355)
	SetMount(Spawn, 7253)
end

function RedToRoss(NPC, Spawn)
	StartAutoMount(Spawn, 387)
	SetMount(Spawn, 7253)
end

function RedToSky(NPC, Spawn)
	StartAutoMount(Spawn, 356)
	SetMount(Spawn, 7253)
end

function RedToBadland(NPC, Spawn)
	StartAutoMount(Spawn, 384)
	SetMount(Spawn, 7253)
end

function RedToWhite(NPC, Spawn)
	StartAutoMount(Spawn, 357)
	SetMount(Spawn, 7253)
end

function WhiteToDanak(NPC, Spawn)
	StartAutoMount(Spawn, 368)
	SetMount(Spawn, 7253)
end

function WhiteToHowl(NPC, Spawn)
	StartAutoMount(Spawn, 369)
	SetMount(Spawn, 7253)
end

function WhiteToSel(NPC, Spawn)
	StartAutoMount(Spawn, 370)
	SetMount(Spawn, 7253)
end

function WhiteToRoss(NPC, Spawn)
	StartAutoMount(Spawn, 371)
	SetMount(Spawn, 7253)
end

function WhiteToSky(NPC, Spawn)
	StartAutoMount(Spawn, 359)
	SetMount(Spawn, 7253)
end

function WhiteToBadland(NPC, Spawn)
	StartAutoMount(Spawn, 367)
	SetMount(Spawn, 7253)
end

function WhiteToRed(NPC, Spawn)
	StartAutoMount(Spawn, 358)
	SetMount(Spawn, 7253)
end