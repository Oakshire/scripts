--[[
	Script Name	: Quests/FrostfangSea/araidingsporetender.lua 
	Script Purpose	: the spawn "a raiding sporetender"
	Script Author	: theFoof
	Script Date	: 2013.5.14
--]]

local RepellingCritters = 7

function spawn(NPC)
    AddSpawnAccess(NPC, NPC)
    SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function SpawnAccess(NPC, Player)
    if HasCompletedQuest(Player, RepellingCritters) == false then
        AddSpawnAccess(NPC, Player)
	end
end