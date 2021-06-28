--[[
    Script Name    : SpawnScripts/Antonica/SighardSayer.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.27 06:06:38
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thank you. I shall look around.")
	StartConversation(conversation, NPC, Spawn, "Welcome, welcome. Please look about. Speak to my merchants; they're quite helpful.")
end


function respawn(NPC)
	spawn(NPC)
end