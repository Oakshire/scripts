--[[
	Script Name	: SpawnScripts/Butcherblock/agriffintamer.lua
	Script Purpose	: a griffin tamer 
	Script Author	: jakejp
	Script Date	: 2018.06.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

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
	        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1042.mp3", "", "", 0, 0, Spawn)
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
end