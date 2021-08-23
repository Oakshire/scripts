--[[
    Script Name    : SpawnScripts/antonica/LordBennet.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.26 07:06:23
    Script Purpose : 
                   : 
--]]

local DoorToDoorDelivery = 5346

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn, DoorToDoorDelivery) == 1 then
	RugsFromHartok(NPC, Spawn)
	else
	PlayFlavor(NPC, "", "Welcome to the Keep of the Gnollslayers. We try to keep the roads and area clear from gnoll incursions.", "", 1689589577, 4560189, Spawn)
end
   end


function RugsFromHartok(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I have some rugs from Hartok.", "Option1")
	StartConversation(conversation, NPC, Spawn, "Hello there. What is it that you need?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "He has been busy working hard, and says he won't make it by this week.", "Option2")
	StartConversation(conversation, NPC, Spawn, "Great, thanks. How has he been? I have not seen him in a while.")
end

function Option2(NPC, Spawn)
    SetStepComplete(Spawn, DoorToDoorDelivery, 1)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Alright.")
	StartConversation(conversation, NPC, Spawn, "That doesn't sound like Hartok. He never works hard! Hah! In that case, tell him I'll see him next week.")
end







function respawn(NPC)
	spawn(NPC)
end