--[[
	Script Name		:	SpawnScripts/Nektropos1/NektroposMountedSwineshead.lua
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
	if CanReceiveQuest(Spawn, 175) then
		fun_name = "Dialog1_1"
	elseif HasQuest(Spawn, 176) then
		fun_name = "Dialog1_3"
	end
	if not HasCompletedQuest(Spawn, 176) then
		AddConversationOption(conversation, "Inspect the eyes.", fun_name)
	end
	AddConversationOption(conversation, "Stop examining the head.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "This is a mounted boar's head. It appears decayed and smells horrid. It looks as though a taxidermist never preserved it. There is something odd about the eyes.")
end

function Dialog1_1(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Take the black eye.", "OfferTheBoarsHead")
	AddConversationOption(conversation, "Stop examining the head.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "The eyes appear to be made of glass, like marbles. One is red and one is black. The black one looks loose.")
end

function Dialog1_3(NPC, Spawn)
	local conversation = CreateConversation()
	if HasQuest(Spawn, 176) then
		AddConversationOption(conversation, "Place the red eye in the hollow socket.", "Dialog2")
	end
	AddConversationOption(conversation, "Stop examining the head.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "There is only one red eye. The eye appears to be made of glass, like a marble. The second eye socket is hollow.")
end

function Dialog2(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Stop examining the head.", "CloseConversation")
	StartDialogConversation(conversation, 1, "You place the red marble-like eye in the hollow socket. A key falls from the mouth of the boar. You now have the Library's Key! You also hear a rumbling coming from down the hall.")
	SetStepComplete(Spawn, 176, 1)
	--We only want to spawn the swine fiend if there is not one currently spawned so groups don't get swarmed
	if GetSpawnByLocationID(GetZone(NPC), 1584471) == nil then
		SpawnByLocationID(GetZone(NPC), 1584471)
	end
end

function OfferTheBoarsHead(NPC, Spawn)
	OfferQuest(NPC, Spawn, 175)
end