--[[
	Script Name	: SpawnScripts/TheBaubbleshire/AlganTinmizer.lua
	Script Purpose	: Algan Tinmizer 
	Script Author	: Dorbin
	Script Date	: 2022.01.07
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local BagoParts = 505
local TowerOfThree = 5441

function spawn(NPC)
    ProvidesQuest(NPC, TowerOfThree)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if not HasQuest(Spawn, TowerOfThree) and not HasCompletedQuest(Spawn, TowerOfThree) then
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "","Hello adventurer! Come hither! You must help reveal the truth about wonders in the Forest Ruins.", "wave", 0, 0, Spawn)
    else
    PlayFlavor(NPC, "","", "ponder", 0, 0, Spawn)
    end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
--PlayFlavor(NPC, "voiceover/english/algan_tinmizer/qey_village06/ebikwobblecog000.mp3", "", "", 1689589577, 4560189, Spawn)
   	if HasQuest(Spawn, BagoParts) and not HasCompletedQuest(Spawn, BagoParts) then
	    AddConversationOption(conversation, "Did you drop this bag of parts I found near the dock?", "quest_complete")
	elseif not HasQuest(Spawn, TowerOfThree) and not HasCompletedQuest(Spawn, TowerOfThree) then
	  AddConversationOption(conversation, "No, no. Do you need something?", "TowerStart")
	 elseif HasQuest(Spawn, TowerOfThree) and GetQuestStep (Spawn, TowerOfThree) == 2 then
	    AddConversationOption(conversation, "I found the Tower of the Three in the Forest Ruins?", "TowerFinish")
	  end
	  
	  PlayFlavor(NPC, "voiceover/english/algan_tinmizer/qey_village06/ebikwobblecog000.mp3", "", "", 1689589577, 4560189, Spawn)
	   AddConversationOption(conversation, "Wait, what? I don't want any part of this.") 
	  StartConversation(conversation, NPC, Spawn, "Greetings!  Looking for a bashcogglinator or perhaps a metefozic thermogauge?")
    end

function quest_complete(NPC, Spawn)
	SetStepComplete(Spawn, BagoParts, 1)
	conversation = CreateConversation()
    PlayFlavor(NPC, "", "", "thank", 3964717986, 1813107488, Spawn)
   AddConversationOption(conversation, "Thanks!")
   StartConversation(conversation, NPC, Spawn, "Oh my, it does indeed!  I thought I'd lost those parts.  You've saved me a great deal of trouble, friend.  Let me compensate you for your keen eyes and good nature.")	 
end

function TowerStart(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	    PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, yes - but what do you need?", "TowerMission")
		AddConversationOption(conversation, "I can't help you.")
	StartConversation(conversation, NPC, Spawn, "I see my superior intellect confuses you.  Don't worry, it perplexes many people - tis' the curse of the Tinmizer name.  However, I can use your help, for even simple minds contribute to the greatness of Qeynos.")
end

function TowerMission(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
	AddConversationOption(conversation, "I will find the mage tower ruins.", "QuestStart")
	StartConversation(conversation, NPC, Spawn, "You must venture into the Forest Ruins. Tavern tales claim the remnants of the magi tower of the Order of Three exist there. You must reveal the truth of this mystery.")
end

function QuestStart (NPC, Spawn)
    FaceTarget(NPC, Spawn)
     OfferQuest(NPC, Spawn, TowerOfThree)
end

function TowerFinish(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "thank", 0, 0, Spawn)
	AddConversationOption(conversation, "No problem at all.","QuestEnd")
	StartConversation(conversation, NPC, Spawn, "This is wonderful news!  Someday, I must explore the ruins but not today.  I thank you for your service, adventurer.")
end

function QuestEnd(NPC, Spawn)
    	SetStepComplete(Spawn, TowerOfThree, 2)
    end

