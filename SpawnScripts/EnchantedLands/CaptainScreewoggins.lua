--[[
	Script Name	: SpawnScripts/EnchantedLands/CaptainScreewoggins.lua
	Script Purpose	: Captain Screewoggins
	Script Author	: Cynnar
	Script Date	: 2015.03.30
	Script Notes	: Manually Created Conversation
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	StartConversation(conversation, NPC, Spawn, "Hail yerself, landlubber.  If'n ye don't mind, I have things dat be needin' me attention.")
end