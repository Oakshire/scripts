--[[
	Script Name	: SpawnScripts/Darklight/aSableveindigger.lua
	Script Purpose	: a Sablevein digger
	Script Author	: Scatman
	Script Date	: 2009.11.19
	Script Notes	: 
--]]

local MIN_TIME = 3000
local MAX_TIME = 10000

function spawn(NPC)
	AddTimer(NPC, math.random(MIN_TIME, MAX_TIME), "MakeAttack")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function MakeAttack(NPC)
	PlayFlavor(NPC, "", "", "attack", 0, 0)
	AddTimer(NPC, math.random(MIN_TIME, MAX_TIME), "MakeAttack")
end