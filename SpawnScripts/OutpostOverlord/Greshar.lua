--[[
	Spawn Template
	Script Name: Greshar.lua
	Script Purpose: Mender (evil)
	Script Author: John Adams
	Script Date: 2008.09.02
	Script Notes: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thanks, I will do so.")
	StartConversation(conversation, NPC, Spawn, "Hello there, " .. GetName(Spawn) .. ". Menders like me repair your equipment after it gets damaged due to death. To learn more about repairs, speak to Trainer Vissa Sathliss nearby. I'll fix your gear for a small fee, but menders in Freeport won't be quite so generous!")
end

function targeted(NPC, Spawn)
    if GetDistance(Spawn, NPC) < 10 then
        hailed(NPC, Spawn)
    end
end