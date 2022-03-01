--[[
	Script Name	: SpawnScripts/ButcherblockMountains/IrontoeForewoman.lua
	Script Purpose	: Irontoe Forewoman <The Irontoe Brigade>
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
	local choice = math.random(1,3)
	
	if HasQuest(Spawn, IrontoeBrigadeRequisitionLists) == true and GetQuestStep(Spawn, IrontoeBrigadeRequisitionLists) == 3 then
		AddConversationOption(conversation, "I am here to collect your requisition list.", "dlg_1_1")
		StartConversation(conversation, NPC, Spawn, "What do ya need?")
	else
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1003.mp3", "", "", 0, 0, Spawn)
			Say(NPC, "Well met!")
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1003.mp3", "", "", 0, 0, Spawn)
			Say(NPC, "The work never stops!")
		elseif choice == 3 then
			PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1003.mp3", "", "", 0, 0, Spawn)
			Say(NPC, "Kaladim WILL be ours!")
		end
	end
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	SetStepComplete(Spawn, IrontoeBrigadeRequisitionLists, 3)
	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thank you.", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "Ah, great! Here you go.")
end

