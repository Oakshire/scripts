--[[
    Script Name    : SpawnScripts/Nektropos1/EverlingSisters.lua
    Script Author  : smash
    Script Date    : 2016.09.09 05:09:39
    Script Purpose : Checking if all of the Everling sisters have been killed for this instance
                   : Alexa will spawn once again if so
--]]

--Location IDs

local SISTERS = {
JENNI = 616531,
SHEILA = 616585,
DEIRDRE = 616611,
CRYSTA = 616609,
ELISE = 616586,
MELANIE = 616608
}

function CheckSistersKilled(NPC, Spawn)
	--Using Sheila's bedroom door to track this
	--Random but it should never despawn
	local zone = GetZone(NPC)
	local door = GetSpawnByLocationID(zone, 1439498)
	SetTempVariable(door, GetSpawnLocationID(NPC), "killed")
	
	for k,v in pairs(SISTERS) do
		if GetTempVariable(door, v) ~= "killed" then
			return
		end
	end
	
	--All of the sisters have been killed, spawn Alexa where this sister died
	local alexa = SpawnMob(GetZone(NPC), 1780201, 0, GetX(NPC), GetY(NPC), GetZ(NPC), 0)
	FaceTarget(alexa, Spawn)
end

function death(NPC, Spawn)
	CheckSistersKilled(NPC, Spawn)
end