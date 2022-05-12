--[[
	Script Name	: SpawnScripts/Antonica/AroofWolfchaser.lua
	Script Purpose	: Aroof Wolfchaser 
	Script Author	: geordie0511
	Script Date	: 2019.03.18
	Script Notes	: Auto-Generated Conversation from PacketParser Data
	Modified by: premierio015
	Modified Notes: Fixes for  dialogues
--]]

local Killing = 466

function spawn(NPC)

end

function respawn(NPC)
	spawn(NPC)
end



function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	 if not HasQuest(Spawn, Killing) or HasCompletedQuest(Spawn, Killing) then
		local choice = MakeRandomInt(1,4)
	if choice == 1 then
    FaceTarget(NPC,Spawn)
		PlayFlavor(NPC, "", "What? Where?", "confused", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Hic...", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Urrp, ello there, why are there two of you...", "squeal", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Hail to you too!", "wave", 1689589577, 4560189, Spawn)
    end		
	elseif GetQuestStep(Spawn, Killing) == 1 then
	    conversation = CreateConversation()
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1002.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Have some soup.", "dlg_2_1")
		AddConversationOption(conversation, "Eww...")
		StartConversation(conversation, NPC, Spawn, "Hail!")
	elseif HasQuest(Spawn, Killing) and GetQuestStep(Spawn, Killing) ~= 1 then
		AddConversationOption(conversation, "Eww...")
		StartConversation(conversation, NPC, Spawn, "Hail!")
	end
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Sober up.", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "Thanks!")
	SetStepComplete(Spawn, Killing, 1)	
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Sober up.", "dlg_2_3")
	StartConversation(conversation, NPC, Spawn, "What?!")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Okay...", "dlg_2_4")
	StartConversation(conversation, NPC, Spawn, "Yeah!")
	SetStepComplete(Spawn, Achoo, 2)	
end
