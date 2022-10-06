--[[
	Script Name	: SpawnScripts/Caves/analabasterbehemoth.lua
	Script Purpose	: an alabaster behemoth 
	Script Author	: Scatman
	Script Date	: 2009.11.20
	Script Notes	: 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGolem1.lua")

local MIN_TIME = 3000
local MAX_TIME = 10000

function spawn(NPC)
	local sli = GetSpawnLocationID(NPC)
	if sli == 387773 or sli == 387774 or sli == 387772 or sli == 387778 or sli == 1585477 or sli == 387766 then
		AddTimer(NPC, math.random(MIN_TIME, MAX_TIME), "MakeAttack")
	end
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

