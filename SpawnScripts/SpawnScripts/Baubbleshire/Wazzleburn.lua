--[[
	Script Name	: SpawnScripts/Baubbleshire/Wazzleburn.lua
	Script Purpose	: Wazzleburn <Spell Scrolls>
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	:
--]]

dofile("SpawnScripts/Generic/GenericScribeVoiceOvers.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if math.random(0, 100) <= 25 then
		FaceTarget(NPC, Spawn)
		GenericScribeHail(NPC, Spawn)
	end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericScribeHail(NPC, Spawn)
end
