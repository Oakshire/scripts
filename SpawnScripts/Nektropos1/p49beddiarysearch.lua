--[[
    Script Name    : SpawnScripts/Nektropos1/p49_bed_diary_search.lua
    Script Author  : smash
    Script Date    : 2016.09.08 04:02:12
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	if GetTempVariable(NPC, "NythsSpawned") ~= "true" then
		SetTempVariable(NPC, "NythsSpawned", "true")
		--Spawn the Nyths
		SpawnGroupByID(GetZone(NPC), 1043630)
	end
	ReadBook1(NPC, Spawn)
end

function ReadBook1(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Examine the book.", "ReadBook2")
	AddConversationOption(conversation, "Leave it alone.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "You find a book hidden under one of the pillows.")
end

function ReadBook2(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Read it.", "ReadBook3")
	AddConversationOption(conversation, "Put it back under the pillow.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "It appears to be the diary of a young girl named Crysta.")
end

function ReadBook3(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Put the book back under the pillow.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "Most of the book talks about her daily life and how she would spend countless hours with her sister Melanie. Apparently the girls would spend all day playing in Melanies room.")
	--SpawnSet(NPC, "show_command_icon", "0")
	--SpawnSet(NPC, "display_hand_icon", "0")
	if GetTempVariable(NPC, "CrystaSpawned") ~= "true" then
		--Spawn Crysta and Melanie
		SpawnGroupByID(GetZone(NPC), 43674)
		SetTempVariable(NPC, "CrystaSpawned", "true")
	end
end