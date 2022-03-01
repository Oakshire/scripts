--[[
    Script Name    : SpawnScripts/FallenGate/MarliaSafefoot.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.07 09:07:57
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		local conversation = CreateConversation()
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1005.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I hope the zombies rip the flesh from your bones, the only good Halfling is on an open spit.")
	AddConversationOption(conversation, "Just stay here where you are safe until I can get you some help.")
	StartConversation(conversation, NPC, Spawn, "Oh, thank you for rescuing me! I've been stuck here for days, these zombies won't let me leave, please, please help me out of here!")
end

function respawn(NPC)
	spawn(NPC)
end