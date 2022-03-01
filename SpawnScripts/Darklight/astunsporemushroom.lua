--[[
    Script Name    : SpawnScripts/Darklight/astunsporemushroom.lua
    Script Author  : fearfx
    Script Date    : 2017.01.23 01:01:06
    Script Purpose : 
                   : 
--]]


local StunningRevelation = 156

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
    SetRequiredQuest(NPC, StunningRevelation, 1)
end

function respawn(NPC)
    spawn(NPC)
end

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, StunningRevelation) then
		AddSpawnAccess(NPC, Spawn)
	end
end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == "gather " then
                    Despawn(NPC)
		    SummonItem(Spawn, 13532)
		end
end