--[[
    Script Name    : SpawnScripts/Antonica/SighardSayer.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.27 06:06:38
    Script Purpose : 
                   : 
--]]

local AFrontiersladysTask = 5528

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/sighard_sayer/antonica/sighardsayer000.mp3", "", "", 2370903667, 1889747783, Spawn)
	if GetQuestStep(Spawn, AFrontiersladysTask) == 1 then
	AddConversationOption(conversation, "Dancer sent this message to you.", "Option1")
	end
	AddConversationOption(conversation, "Thank you. I shall look around.")
	StartConversation(conversation, NPC, Spawn, "Welcome, welcome. Please look about. Speak to my merchants; they're quite helpful.")
end

function Option1(NPC, Spawn)
    SetStepComplete(Spawn, AFrontiersladysTask, 1)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/sighard_sayer/antonica/sighardsayer001.mp3", "", "", 226640630, 2449088928, Spawn)
	AddConversationOption(conversation, "I shall see that she gets the arrow. ")
	StartConversation(conversation, NPC, Spawn, "Ah! Dancer the frontiersman ... er ... I mean frontierslady as she says. Here, here. This is for her, an arrow like few others, an arrow she is expecting.  ")
end




function respawn(NPC)
	spawn(NPC)
end