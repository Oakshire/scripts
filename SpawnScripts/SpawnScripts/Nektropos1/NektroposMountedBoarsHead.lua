--[[
	Script Name		:	SpawnScripts/Nektropos1/NektroposMountedBoarsHead.lua
	Script Purpose	:	
	Script Author	:	smash
	Script Date		:	1/26/2016
	Script Notes	:	
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	if Message == "inspect" then
		Dialog1(NPC, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	local conversation = CreateConversation()
	local fun_name
	if not HasCompletedQuest(Spawn, 175) then
		fun_name = "Dialog1_1"
	else
		fun_name = "Dialog1_2"
	end
	AddConversationOption(conversation, "Inspect the eyes.", fun_name)
	AddConversationOption(conversation, "Stop examining the head.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "This is a mounted boar's head. It appears decayed and smells horrid. It looks as though as taxidermist never preserved it. There is something odd about the eyes.")
end

function Dialog1_1(NPC, Spawn)
	local conversation = CreateConversation()
	if HasQuest(Spawn, 175) then
		AddConversationOption(conversation, "Place the black eye in the hollow socket.", "Dialog2")
	end
	AddConversationOption(conversation, "Stop examining the head.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "There is only one black eye. The eye appears to be made of glass, like a marble. The second eye socket is hollow.")
end

function Dialog1_2(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Stop examining the head.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "There are two black marble-like eyes inset into the creature.")
end

function Dialog2(NPC, Spawn)
	local conversatoin = CreateConversation()
	AddConversationOption(conversation, "Stop examining the head.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "You place the black marble-like eye in the hollow socket. A key falls from the mouth of the boar. This key appears to match the Barracks locks here in Nektropos.")
	SetStepComplete(Spawn, 175, 1)
end