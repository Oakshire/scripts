--[[
	Script Name	: SpawnScripts/SouthQeynos/AllyshaLanne.lua
	Script Purpose	: Allysha Lanne <Specialty Jeweler>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
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

	PlayFlavor(NPC, "", "Gems and rocks, that is my specialty! I also bake a mean jumjum pie don't ya know!", "wave", 1689589577, 4560189, Spawn)
end

