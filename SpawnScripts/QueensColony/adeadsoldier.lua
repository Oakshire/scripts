--[[
	Script Name	: SpawnScripts/QueensColony/adeadsoldier.lua
	Script Purpose	: a dead soldier
	Script Author	: Scatman
	Script Date	: 2009.06.13
	Script Notes	: 
--]]

--local DefiledSoldier = 2530024
local APresenceOfEvil = 131

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "OutOfRange")
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if HasQuest(Spawn, APresenceOfEvil) and GetQuestStep(Spawn, APresenceOfEvil) == 4 and not (GetTempVariable(NPC, "APresenceOfEvil_Activated") == "True") then
		SetStepComplete(Spawn, APresenceOfEvil, 4)
		SetTempVariable(NPC, "APresenceOfEvil_Activated", "True")
--		local defiled = SpawnMob(GetZone(NPC), DefiledSoldier, 0, GetX(NPC), GetY(NPC), GetZ(NPC), GetHeading(NPC))
		local defiled = SpawnMob(GetZone(NPC), 2530223, 0, GetX(NPC), GetY(NPC), GetZ(NPC), GetHeading(NPC))

                if defiled ~= nil then
			Attack(NPC, Spawn)
		end
		Despawn(NPC, 2000)
	end
end

function OutOfRange(NPC, Spawn)
end
