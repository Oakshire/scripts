--[[
	Script Name	: SpawnScripts/Butcherblock/agriffintamer.lua
	Script Purpose	: a griffin tamer (1080164)
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
    
	if GetSpawnLocationID(NPC) == 72449	 then
		--Docks--
		AddConversationOption(con, "To Greater Faydark.", "DocksToGFay")
		AddConversationOption(con, "To The Highland Station.", "DocksToHigh")
		AddConversationOption(con, "To Lesser Faydark.", "DocksToLFay")
	elseif GetSpawnLocationID(NPC) == 1586031 then
		--Greater Faydark--
	    AddConversationOption(con, "To The Docks.", "GfayToDocks")
	    AddConversationOption(con, "To The Highland Station.", "GFayToHigh")
	    AddConversationOption(con, "To Lesser Faydark.", "GfayToLFay")
	elseif GetSpawnLocationID(NPC) == 72602 then
		--Highland--
		AddConversationOption(con, "To The Docks.", "HighToDocks")
	elseif GetSpawnLocationID(NPC) == 72601 then
		--Lesser Faydark--
	    AddConversationOption(con, "To The Docks.", "LFayToDocks")
	    AddConversationOption(con, "To Greater Faydark.", "LFayToGFay")
	    AddConversationOption(con, "To The Highland Station.", "LFayToHigh")
	else
		PlayFlavor(NPC, "", "Not implemented yet!", "cry", 0, 0, Spawn)
	end
	AddConversationOption(con, "Nowhere.")
	StartConversation(con, NPC, Spawn, "Where to?")
end

function DocksToGFay(NPC, Spawn)
	StartAutoMount(Spawn, 241)
	SetMount(Spawn, 225)
end

function DocksToHigh(NPC, Spawn)
	StartAutoMount(Spawn, 238)
	SetMount(Spawn, 225)
end

function DocksToLFay(NPC, Spawn)
	StartAutoMount(Spawn, 242)
	SetMount(Spawn, 225)
end

function GfayToDocks(NPC, Spawn)
	StartAutoMount(Spawn, 231)
	SetMount(Spawn, 225)
end

function GFayToHigh(NPC, Spawn)
	StartAutoMount(Spawn, 232)
	SetMount(Spawn, 225)
end

function GfayToLFay(NPC, Spawn)
	StartAutoMount(Spawn, 243)
	SetMount(Spawn, 225)
end

function HighToDocks(NPC, Spawn)
	StartAutoMount(Spawn, 228)
	SetMount(Spawn, 225)
end

function LFayToDocks(NPC, Spawn)
	StartAutoMount(Spawn, 240)
	SetMount(Spawn, 225)
end

function LFayToGFay(NPC, Spawn)
	StartAutoMount(Spawn, 239)
	SetMount(Spawn, 225)
end

function LFayToHigh(NPC, Spawn)
	StartAutoMount(Spawn, 233)
	SetMount(Spawn, 225)
end

--[[Replaced script 
	Script Name	: SpawnScripts/Butcherblock/agriffintamer.lua
	Script Purpose	: a griffin tamer 
	Script Author	: jakejp
	Script Date	: 2018.06.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data


local GriffinStationsButcherblock = 269

function spawn(NPC)
	ProvidesQuest(NPC, GriffinStationsButcherblock)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

 if CanReceiveQuest(Spawn, GriffinStationsButcherblock) then
		-- Start Quest
	       -- PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1042.mp3", "", "", 0, 0, Spawn)
	        AddConversationOption(conversation, "I would like to travel.", "dlg_4_1")
	        AddConversationOption(conversation, "I am fine staying here, thanks.")
	        StartConversation(conversation, NPC, Spawn, "Greetings traveler, how can I assist you today?")
	elseif HasQuest(Spawn, GriffinStationsButcherblock) and GetQuestStep(Spawn, GriffinStationsButcherblock) < 3 then
		-- Still on quest
                Say(NPC, "Did you discover all of the routes yet?")
	elseif HasCompletedQuest(Spawn, GriffinStationsButcherblock) then
		-- Finished Quest
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1042.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like to travel.", "dlg_1_1")
		AddConversationOption(conversation, "Nowhere.")
		StartConversation(conversation, NPC, Spawn, "Greetings traveler, how can I assist you today?")
	end
end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "That makes sense.", "GiveGriffinStationsButcherblock")
	StartConversation(conversation, NPC, Spawn, "Well, before I can send you off you must discover the routes for yourself. There are stations near the docks, Greater Faydark and Lesser Faydark. Once you map the location of each you can borrow one of our griffons. We have to be sure you won't get lost up there.")
end

function GiveGriffinStationsButcherblock(NPC, Spawn)
	OfferQuest(NPC, Spawn, GriffinStationsButcherblock)
end--]]