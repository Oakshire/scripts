--[[
	Script Name	: SpawnScripts/Stormhold/ArchaeologistElurad.lua
	Script Purpose	: Archaeologist Elurad 
	Script Author	: TyroneSWG
	Script Date	: 2020.06.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local QUEST_RELICS_FOR_ELURAD_ID = 5712

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	ProvidesQuest (NPC, QUEST_RELICS_FOR_ELURAD_ID)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_RELICS_FOR_ELURAD_ID) or HasQuest(Spawn, QUEST_RELICS_FOR_ELURAD_ID) then
	else
	    RelicsForElurad(NPC, Spawn, conversation)
	end
	
	
--[[
	local choice = math.random(1,2)


	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/archaeologist_elurad/befallen/quest/010_archaeologist_elurad_notcompletedquest_71f32dc8.mp3", "Hail adventurer!  You wouldn't happen to be interested in fortune and glory, would you?", "hello", 801293320, 145198187, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/archaeologist_elurad/befallen/quest/010_archaeologist_elurad_completedquest_60e979f5.mp3", "Well, have you retrieved the items yet?", "peer", 3772633495, 1778716381, Spawn)
	else
	end
	--]]

end

--------------
--  Relics for Elurad
--------------
function RelicsForElurad(NPC, Spawn, conversation)
   --PlayFlavor
   AddConversationOption(conversation, "What artifacts?", "dlg_1_1")
   AddConversationOption(conversation, "I'm not interested.")
   StartConversation(conversation, NPC, Spawn, "You see, it seems that there are quite a few ghoulish creatures standing before myself and a few of the artifacts I plan to recover down here.")
end

function dlg_1_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    
    --PlayFlavor
    AddConversationOption(conversation, "No need to explain, just tell me what I'm looking for.", "OfferQuestRelicsForElurad")
    AddConversationOption(conversation, "Tell me about them.", "dlg_2_2")
    AddConversationOption(conversation, "I'm not interested, sorry.")
    StartConversation(conversation, NPC, Spawn, "Not so much artifacts, really, but relics. It's all quite a long story, but I'd be happy to explain if you're interested.")
end

function dlg_2_2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    
    --PlayFlavor
    AddConversationOption(conversation, "Then I'll help you.", "OfferQuestRelicsForElurad")
    AddConversationOption(conversation, "Thanks for the explanation, but I don't think I'm cut out for this.")
    StartConversation(conversation, NPC, Spawn, "Each of these three items, while not instrumental to the order, is of significant historical value. I've dreamed of studying them, but when I arrived here, I found that I could no more make my way down through these depths than I could sneak into Freeport to get a peek at the library in the Academy of Arcane Science.")
end    

function OfferQuestRelicsForElurad(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, QUEST_RELICS_FOR_ELURAD_ID)
end