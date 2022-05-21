--[[
	Script Name	: SpawnScripts/Oakmyst/TrackerKelnis.lua
	Script Purpose	: Tracker Kelnis 
	Script Author	: scatman
	Script Date	: 2009.05.08
	Script Notes	: Added Delivery Quest Dialogue & VO - 2022.03.11 Dorbin
--]]

local Delivery = 5510

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    if GetQuestStep(Spawn, Delivery)==1 then
	AddConversationOption(conversation, "I bring a message from Silentstrider about the location of Holly Windstalker's grave.","Holly")
    end    
	PlayFlavor(NPC, "voiceover/english/tracker_kelnis/qey_adv01_oakmyst/trackerkelnis000.mp3", "", "", 2160349950, 3920623086, Spawn)
	AddConversationOption(conversation, "I shall watch my steps within these woods.")
	StartConversation(conversation, NPC, Spawn, "Enter the forest with caution, traveler!  You never know what dangers lurk in the Oakmyst. ")
end

function Holly(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tracker_kelnis/qey_adv01_oakmyst/trackerkelnis001.mp3", "", "boggle", 1572302880, 579510228, Spawn)
	AddConversationOption(conversation, "I will let her know. Thank you.","Holly2")
	StartConversation(conversation, NPC, Spawn, "Holly Windstalker's grave!  Amazing!  I shall speak with Silentstrider about this matter soon. Thank you adventurer.  Let Silentstrider know I will relay word to The Greenhoods.")
end

function Holly2(NPC, Spawn)
    	SetStepComplete(Spawn, Delivery, 1)
    end