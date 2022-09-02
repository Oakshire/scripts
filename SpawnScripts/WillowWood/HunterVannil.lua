--[[
	Script Name	: SpawnScripts/WillowWood/HunterVannil.lua
	Script Purpose	: Hunter Vannil
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: This spawn speaks Ayr'Dal
--]]
dofile("SpawnScripts/Generic/UnknownLanguage.lua")
local QUEST_1 = 222

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	EcologyEmotes(NPC,Spawn)
end

function EcologyEmotes(NPC,Spawn)
            local choice = math.random(1,4)
            
                if choice == 1 then
	            PlayFlavor(NPC, "", "", "peer", 0, 0, Spawn)
	            AddTimer(NPC, 12000, "EcologyEmotes",1,Spawn) 
	            
	            elseif choice == 2 then
	            PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
	            AddTimer(NPC, 11000, "EcologyEmotes",1,Spawn) 
	            
                elseif choice == 3 then
	            PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
	            AddTimer(NPC, 10000, "EcologyEmotes",1,Spawn) 
	            
	            elseif choice == 4 then
	            PlayFlavor(NPC, "", "", "stare", 0, 0, Spawn)
	            AddTimer(NPC, 8000, "EcologyEmotes",1,Spawn) 
            end	  
    end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasLanguage(Spawn, 7) then
    Garbled(NPC,Spawn)
	else    
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		local choice = math.random(1, 2)
		if choice == 1 then
			Say(NPC, "Come to get a better vantage point of the village, friend?", Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/hunter_vannil/qey_village05/huntervannil000.mp3", "", "", 1807378459, 3962910976, Spawn)
			Say(NPC, "Good day to you, friend.  So you too have an interest in keeping an eye on who comes and goes out of these gates?", Spawn)
		end
	else
		if HasQuest(Spawn, QUEST_1) then
			if GetQuestStep(Spawn, QUEST_1) == 2 then
				AddConversationOption(conversation, "I have slain the adders.", "AddersSlain")
			end
		elseif GetLevel(Spawn) >= 2 then
			AddConversationOption(conversation, "Where does that gate go?", "dlg_1_1")
		end
		PlayFlavor(NPC, "voiceover/english/hunter_vannil/qey_village05/huntervannil000.mp3", "", "", 1807378459, 3962910976, Spawn)
		AddConversationOption(conversation, "Not really, I am just doing a bit of exploring.  ")
		StartConversation(conversation, NPC, Spawn, "Good day to you, friend.  So you too have an interest in keeping an eye on who comes and goes out of these gates?")
	end
    end
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/hunter_vannil/qey_village05/huntervannil001.mp3", "", "", 929186001, 4080341564, Spawn)
	AddConversationOption(conversation, "I'm up for a little snake hunting.", "OfferQuest1")
	AddConversationOption(conversation, "I'm sorry, but I'm not up to snake hunting.")
	StartConversation(conversation, NPC, Spawn, "That gate leads to the Elddar and the other gate leads to the Forest Ruins. Many young adventurers journey through the gates testing their mettle against the dangerous creatures that inhabit the area. Say, you seem courageous... would you help rid the area of rock adders? The creatures are a lethal threat to our people!")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function AddersSlain(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "You killed the rock adders! On behalf of our village, I thank you for carrying out this dangerous quest.")
end