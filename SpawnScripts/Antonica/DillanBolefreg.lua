--[[
    Script Name    : SpawnScripts/Antonica/DillanBolefreg.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.16 05:08:02
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 15, "InRange")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1, 3)
	if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1054.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1054.mp3", "", "", 0, 0, Spawn)
	elseif choice == 3 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1054.mp3", "", "", 0, 0, Spawn)
	end	
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Are you selling anything other than food?", "Option1")
	AddConversationOption(conversation, "I need to leave.")
	StartConversation(conversation, NPC, Spawn, "Hello. You in the market for some food?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I am interested in it.", "Option2")
	AddConversationOption(conversation, "I need to leave.")
	StartConversation(conversation, NPC, Spawn, "Just the old key I have. It supposedly goes to a condemned catacomb that the Guards of Qeynos no longer watch over. Maybe an adventure there for you?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Sure, just let me know when you want to buy it.")
end






function InRange(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "You there, I might have something you want to buy...", "", 1689589577, 4560189, Spawn)
end
	

function respawn(NPC)
	spawn(NPC)
end