--[[
	Script Name	: SpawnScripts/ButcherblockMountains/IrontoeForemanOne.lua
	Script Purpose	: Irontoe Foreman <The Irontoe Brigade>
	Script Author	: jakejp
	Script Date	: 2018.06.08
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local IrontoeBrigadeRequisitionLists = 282


function spawn(NPC)
	
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	local choice = math.random(1,2)
	
	if HasQuest(Spawn, IrontoeBrigadeRequisitionLists) == true and GetQuestStep(Spawn, IrontoeBrigadeRequisitionLists) == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am here for your requisition list.", "dlg_2_1")
		StartConversation(conversation, NPC, Spawn, "Yes?")
	else
		if choice == 1 then
		    PlayFlavor(NPC, "", "Why must you bother me?", "", 1689589577, 4560189, Spawn)
	        elseif choice == 2 then
		    PlayFlavor(NPC, "", "What is it? What do you want?", "", 1689589577, 4560189, Spawn)
		end
	end
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	SetStepComplete(Spawn, IrontoeBrigadeRequisitionLists, 1)
	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Here.")
end
