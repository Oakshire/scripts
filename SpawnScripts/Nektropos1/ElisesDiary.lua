--[[
    Script Name    : SpawnScripts/Nektropos1/ElisesDiary.lua
    Script Author  : smash
    Script Date    : 2016.02.06 04:02:12
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	Dialog1(NPC, Spawn)
end


function EndConvo(NPC)
	SpawnSet(NPC, "heading", "80")
end

function TryPickupBook(NPC, Spawn)
	SendMessage(Spawn, "As you put the book in your pack, it flies from your hand and returns to rest on the dresser.")
	EndConvo(NPC)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	AddConversationOption(conversation, "Read what you can from the book.", "Dialog1_1")
	AddConversationOption(conversation, "Put the book down.", "EndConvo")
	StartConversation(conversation, NPC, Spawn, "You pick the book up and begin to read it, most of the pages from the book have been torn out but a few are still legible.")
end

function Dialog1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	AddConversationOption(conversation, "Keep reading.", "Dialog2_1")
	AddConversationOption(conversation, "Stop reading and put the book down.", "EndConvo")
	AddConversationOption(conversation, "Stop reading, but take the book with you.", "TryPickupBook")
	StartConversation(conversation, NPC, Spawn, ".... was nearly seen last night.")
end

function Dialog2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Continue reading.", "Dialog3_1")
	AddConversationOption(conversation, "Stop reading and put the book down.", "EndConvo")
	AddConversationOption(conversation, "Stop reading, but take the book with you.", "TryPickupBook")
	StartConversation(conversation, NPC, Spawn, "..Sheila nearly killed me when she heard the guards talking about someone walking the ramparts last night.....")
end

function Dialog3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	AddConversationOption(conversation, "Put the book down.", "EndConvo")
	AddConversationOption(conversation, "Take the book with you.", "TryPickupBook")
	StartConversation(conversation, NPC, Spawn, "With my new cloak, it should be easier for me to sneak out at night...Nothing else in the book appears to be legible. ")
	
	SpawnElise(NPC)
end

function SpawnElise(NPC)
	if GetTempVariable(NPC, "elise_spawned") ~= "true" then
		SetTempVariable(NPC, "elise_spawned", "true")
		SpawnByLocationID(GetZone(NPC), 616586)
	end
end