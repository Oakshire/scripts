--[[
    Script Name    : SpawnScripts/Darklight/adiscardedweapon.lua
    Script Author  : fearfx
    Script Date    : 2017.01.23 01:01:43
    Script Purpose : 
                   : 
--]]

local OneMansWaste = 143

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
    SetRequiredQuest(NPC, OneMansWaste, 1)
end

function respawn(NPC)
    spawn(NPC)
end

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, OneMansWaste) then
		AddSpawnAccess(NPC, Spawn)
	end
end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == "gather " then
                    Despawn(NPC)
		    SummonItem(Spawn, 6485)
		end
end