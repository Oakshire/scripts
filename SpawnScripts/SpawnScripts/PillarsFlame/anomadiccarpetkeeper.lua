--[[
	Script Name	: SpawnScripts/PillarsFlame/anomadiccarpetkeeper.lua
	Script Purpose	: A Nomadic Carpet Keeper (700148)
	Script Author	: Neatz09
	Script Date	: 4/17/2019
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
    
	if GetSpawnLocationID(NPC) == 584677	 then
		--Giant's Field--
		AddConversationOption(con, "To Prophet's Peak", "FieldToPeak")
		AddConversationOption(con, "To Stinging Isle.", "FieldToIsle")
		AddConversationOption(con, "To Swiftrider's Caravan.", "FieldToSwift")
		AddConversationOption(con, "To T'Narev.", "FieldToNarev")
	elseif GetSpawnLocationID(NPC) == 584675 then
		--Prophet's Peak--
	    AddConversationOption(con, "To Giant's Field.", "PeakToField")
	    AddConversationOption(con, "To Stinging Isle.", "PeakToIsle")
	    AddConversationOption(con, "To Swiftrider's Caravan.", "PeakToSwift")
	    AddConversationOption(con, "To T'Narev.", "PeakToNarev")
	elseif GetSpawnLocationID(NPC) == 584676 then
		--Stinging Isle--
		AddConversationOption(con, "To Giant's Field.", "IsleToField")
	    AddConversationOption(con, "To Prophet's Peak.", "IsleToPeak")
	    AddConversationOption(con, "To Swiftrider's Caravan.", "IsleToSwift")
		AddConversationOption(con, "To T'Narev.", "IsleToNarev")
	elseif GetSpawnLocationID(NPC) == 584673 then
		--Swiftrider's Caravan--
	    AddConversationOption(con, "To Giant's Field.", "SwiftToField")
	    AddConversationOption(con, "To Prophet's Peak.", "SwiftToPeak")
	    AddConversationOption(con, "To Stinging Isle.", "SwiftToIsle")
	    AddConversationOption(con, "To T'Narev.", "SwiftToNarev")
	elseif GetSpawnLocationID(NPC) == 584674 then
		--T'Narev--
	    AddConversationOption(con, "To Giant's Field.", "NarevToField")
	    AddConversationOption(con, "To Prophet's Peak.", "NarevToPeak")
	    AddConversationOption(con, "To Stinging Isle.", "NarevToIsle")
	    AddConversationOption(con, "To Swiftrider's Caravan.", "NarevToSwift")
	else
		PlayFlavor(NPC, "", "Not implemented yet!", "cry", 0, 0, Spawn)
	end
	AddConversationOption(con, "Nowhere.")
	StartConversation(con, NPC, Spawn, "Where to?")
end

function FieldToPeak(NPC, Spawn)
	StartAutoMount(Spawn, 738)
	SetMount(Spawn, 1369)
end

function FieldToIsle(NPC, Spawn)
	StartAutoMount(Spawn, 740)
	SetMount(Spawn, 1369)
end

function FieldToSwift(NPC, Spawn)
	StartAutoMount(Spawn, 732)
	SetMount(Spawn, 1369)
end

function FieldToNarev(NPC, Spawn)
	StartAutoMount(Spawn, 739)
	SetMount(Spawn, 1369)
end

function PeakToField(NPC, Spawn)
	StartAutoMount(Spawn, 742)
	SetMount(Spawn, 1369)
end

function PeakToIsle(NPC, Spawn)
	StartAutoMount(Spawn, 743)
	SetMount(Spawn, 1369)
end

function PeakToSwift(NPC, Spawn)
	StartAutoMount(Spawn, 734)
	SetMount(Spawn, 1369)
end

function PeakToNarev(NPC, Spawn)
	StartAutoMount(Spawn, 741)
	SetMount(Spawn, 1369)
end

function IsleToField(NPC, Spawn)
	StartAutoMount(Spawn, 745)
	SetMount(Spawn, 1369)
end

function IsleToPeak(NPC, Spawn)
	StartAutoMount(Spawn, 746)
	SetMount(Spawn, 1369)
end

function IsleToSwift(NPC, Spawn)
	StartAutoMount(Spawn, 733)
	SetMount(Spawn, 1369)
end

function IsleToNarev(NPC, Spawn)
	StartAutoMount(Spawn, 744)
	SetMount(Spawn, 1369)
end

function SwiftToField(NPC, Spawn)
	StartAutoMount(Spawn, 728)
	SetMount(Spawn, 1369)
end

function SwiftToPeak(NPC, Spawn)
	StartAutoMount(Spawn, 730)
	SetMount(Spawn, 1369)
end

function SwiftToIsle(NPC, Spawn)
	StartAutoMount(Spawn, 729)
	SetMount(Spawn, 1369)
end

function SwiftToNarev(NPC, Spawn)
	StartAutoMount(Spawn, 727)
	SetMount(Spawn, 1369)
end

function NarevToField(NPC, Spawn)
	StartAutoMount(Spawn, 735)
	SetMount(Spawn, 1369)
end

function NarevToPeak(NPC, Spawn)
	StartAutoMount(Spawn, 736)
	SetMount(Spawn, 1369)
end

function NarevToIsle(NPC, Spawn)
	StartAutoMount(Spawn, 737)
	SetMount(Spawn, 1369)
end

function NarevToSwift(NPC, Spawn)
	StartAutoMount(Spawn, 731)
	SetMount(Spawn, 1369)
end