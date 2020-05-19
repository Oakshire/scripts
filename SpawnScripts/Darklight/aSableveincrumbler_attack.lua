--[[
	Script Name	: SpawnScripts/Darklight/aSableveincrumbler.lua
	Script Purpose	: a Sablevein crumbler
	Script Author	: Scatman
	Script Date	: 2009.12.15
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/MovementCircleSmall.lua")

local MIN_TIME = 3000
local MAX_TIME = 10000

function spawn(NPC)
	local sli = GetSpawnLocationID(NPC)
	if sli == 85722 or sli == 85817 or sli == 85794 or sli == 85775 or sli == 85714 or sli == 85701 or sli == 98562 or sli == 85711 or sli == 85759 or sli == 85731 or sli == 85723 or sli == 85712 or sli == 85865 or sli == 85730 or sli == 85862 then
		AddTimer(NPC, math.random(MIN_TIME, MAX_TIME), "MakeAttack")
	else
		SpawnChooseRandomMovement(NPC)
	end
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function MakeAttack(NPC)
	PlayFlavor(NPC, "", "", "attack", 0, 0)
	AddTimer(NPC, math.random(MIN_TIME, MAX_TIME), "MakeAttack")
end