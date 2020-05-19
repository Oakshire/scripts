 --[[
	Script Name	: SpawnScripts/GreaterFaydark/astablemaster.lua
	Script Purpose	: a stable master (1140115)
	Script Author	: Neatz09
	Script Date	: 4/16/2019
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
    
	if GetSpawnLocationID(NPC) == 202854	 then
		--Butcherblock Mountains--
		AddConversationOption(con, "To Crushbone", "BBMToCrush")
		AddConversationOption(con, "To Kelethin.", "BBMToKel")
		AddConversationOption(con, "To Lesser Faydark.", "BBMToLFay")
		AddConversationOption(con, "To Loping Plains.", "BBMToPlains")
		AddConversationOption(con, "To New Tunaria.", "BBMToTuna")
		AddConversationOption(con, "To Steamfont Mountains.", "BBMToSFM")
	elseif GetSpawnLocationID(NPC) == 595026 then
		--Crushbone--
	    AddConversationOption(con, "To Butcherblock Mountains.", "CrushToBBM")
	    AddConversationOption(con, "To Kelethin.", "CrushToKel")
	    AddConversationOption(con, "To Lesser Faydark.", "CrushToLFay")
	    AddConversationOption(con, "To Loping Plains.", "CrushToPlains")
		AddConversationOption(con, "To New Tunaria.", "CrushToTuna")
		AddConversationOption(con, "To Steamfont Mountains.", "CrushToSFM")
	elseif GetSpawnLocationID(NPC) == 1586029 then
		--Lesser Faydark--
		AddConversationOption(con, "To Butcherblock Mountains.", "LFayToBBM")
	    AddConversationOption(con, "To Crushbone.", "LFayToCrush")
	    AddConversationOption(con, "To Kelethin.", "LFayToKel")
		AddConversationOption(con, "To Loping Plains.", "LFayToPlains")
	    AddConversationOption(con, "To New Tunaria.", "LFayToTuna")
		AddConversationOption(con, "To Steamfont Mountains.", "LFayToSFM")
	elseif GetSpawnLocationID(NPC) == 202850 then
		--Loping Plains--
	    AddConversationOption(con, "To Butcherblock Mountains.", "PlainsToBBM")
	    AddConversationOption(con, "To Crushbone.", "PlainsToCrush")
	    AddConversationOption(con, "To Kelethin.", "PlainsToKel")
	    AddConversationOption(con, "To Lesser Faydark.", "PlainsToLFay")
		AddConversationOption(con, "To New Tunaria.", "PlainsToTuna")
		AddConversationOption(con, "To Steamfont Mountains.", "PlainsToSFM")
	elseif GetSpawnLocationID(NPC) == 202847 then
		--New Tunaria--
	    AddConversationOption(con, "To Butcherblock Mountains.", "TunaToBBM")
	    AddConversationOption(con, "To Crushbone.", "TunaToCrush")
	    AddConversationOption(con, "To Kelethin.", "TunaToKel")
	    AddConversationOption(con, "To Lesser Faydark.", "TunaToLFay")
		AddConversationOption(con, "To Loping Plains.", "TunaToPlains")
		AddConversationOption(con, "To Steamfont Mountains.", "TunaToSFM")
	elseif GetSpawnLocationID(NPC) == 202849 then
		--Steamfont Mountains--
		AddConversationOption(con, "To Butcherblock Mountains.", "SFMToBBM")
		AddConversationOption(con, "To Crushbone.", "SFMToCrush")
		AddConversationOption(con, "To Kelethin.", "SFMToKel")
		AddConversationOption(con, "To Lesser Faydark.", "SFMToLFay")
		AddConversationOption(con, "To Loping Plains.", "SFMToPlains")
		AddConversationOption(con, "To New Tunaria.", "SFMToTuna")
		--MISSING KELETHIN STATIONS KEL ID 205477
	else
		PlayFlavor(NPC, "", "Not implemented yet!", "cry", 0, 0, Spawn)
	end
	AddConversationOption(con, "Nowhere.")
	StartConversation(con, NPC, Spawn, "Where to?")
end

function BBMToCrush(NPC, Spawn)
	StartAutoMount(Spawn, 140)
	SetMount(Spawn, 6846)
end

function BBMToKel(NPC, Spawn)
	StartAutoMount(Spawn, 129)
	SetMount(Spawn, 6846)
end

function BBMToLFay(NPC, Spawn)
	StartAutoMount(Spawn, 143)
	SetMount(Spawn, 6846)
end

function BBMToPlains(NPC, Spawn)
	StartAutoMount(Spawn, 144)
	SetMount(Spawn, 6846)
end

function BBMToTuna(NPC, Spawn)
	StartAutoMount(Spawn, 141)
	SetMount(Spawn, 6846)
end

function BBMToSFM(NPC, Spawn)
	StartAutoMount(Spawn, 142)
	SetMount(Spawn, 6846)
end

function CrushToBBM(NPC, Spawn)
	StartAutoMount(Spawn, 146)
	SetMount(Spawn, 6846)
end

function CrushToKel(NPC, Spawn)
	StartAutoMount(Spawn, 132)
	SetMount(Spawn, 6846)
end

function CrushToLFay(NPC, Spawn)
	StartAutoMount(Spawn, 148)
	SetMount(Spawn, 6846)
end

function CrushToPlains(NPC, Spawn)
	StartAutoMount(Spawn, 149)
	SetMount(Spawn, 6846)
end

function CrushToTuna(NPC, Spawn)
	StartAutoMount(Spawn, 145)
	SetMount(Spawn, 6846)
end

function CrushToSFM(NPC, Spawn)
	StartAutoMount(Spawn, 147)
	SetMount(Spawn, 6846)
end

function LFayToBBM(NPC, Spawn)
	StartAutoMount(Spawn, 151)
	SetMount(Spawn, 6846)
end

function LFayToCrush(NPC, Spawn)
	StartAutoMount(Spawn, 150)
	SetMount(Spawn, 6846)
end

function LFayToKel(NPC, Spawn)
	StartAutoMount(Spawn, 133)
	SetMount(Spawn, 6846)
end

function LFayToPlains(NPC, Spawn)
	StartAutoMount(Spawn, 154)
	SetMount(Spawn, 6846)
end

function LFayToTuna(NPC, Spawn)
	StartAutoMount(Spawn, 153)
	SetMount(Spawn, 6846)
end

function LFayToSFM(NPC, Spawn)
	StartAutoMount(Spawn, 152)
	SetMount(Spawn, 6846)
end

function PlainsToBBM(NPC, Spawn)
	StartAutoMount(Spawn, 156)
	SetMount(Spawn, 6846)
end

function PlainsToCrush(NPC, Spawn)
	StartAutoMount(Spawn, 155)
	SetMount(Spawn, 6846)
end

function PlainsToKel(NPC, Spawn)
	StartAutoMount(Spawn, 134)
	SetMount(Spawn,6846)
end

function PlainsToLFay(NPC, Spawn)
	StartAutoMount(Spawn, 158)
	SetMount(Spawn, 6846)
end

function PlainsToTuna(NPC, Spawn)
	StartAutoMount(Spawn, 159)
	SetMount(Spawn, 6846)
end

function PlainsToSFM(NPC, Spawn)
	StartAutoMount(Spawn, 157)
	SetMount(Spawn, 6846)
end

function DocksToFoothills(NPC, Spawn)
	StartAutoMount(Spawn, 43)
	SetMount(Spawn, 6846)
end

function TunaToBBM(NPC, Spawn)
	StartAutoMount(Spawn, 161)
	SetMount(Spawn, 6846)
end

function TunaToCrush(NPC, Spawn)
	StartAutoMount(Spawn, 160)
	SetMount(Spawn, 6846)
end

function TunaToKel(NPC, Spawn)
	StartAutoMount(Spawn, 130)
	SetMount(Spawn, 6846)
end

function TunaToLFay(NPC, Spawn)
	StartAutoMount(Spawn, 163)
	SetMount(Spawn, 6846)
end

function TunaToPlains(NPC, Spawn)
	StartAutoMount(Spawn, 164)
	SetMount(Spawn, 6846)
end

function TunaToSFM(NPC, Spawn)
	StartAutoMount(Spawn, 162)
	SetMount(Spawn, 6846)
end

function SFMToBBM(NPC, Spawn)
	StartAutoMount(Spawn, 136)
	SetMount(Spawn, 6846)
end

function SFMToCrush(NPC, Spawn)
	StartAutoMount(Spawn, 135)
	SetMount(Spawn, 6846)
end

function SFMToKel(NPC, Spawn)
	StartAutoMount(Spawn, 131)
	SetMount(Spawn, 6846)
end

function SFMToLFay(NPC, Spawn)
	StartAutoMount(Spawn, 138)
	SetMount(Spawn, 6846)
end

function SFMToPlains(NPC, Spawn)
	StartAutoMount(Spawn, 139)
	SetMount(Spawn, 6846)
end

function SFMToTuna(NPC, Spawn)
	StartAutoMount(Spawn, 137)
	SetMount(Spawn, 6846)
end