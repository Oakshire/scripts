--[[
    Script Name    : SpawnScripts/Darklight/discardedwood.lua
    Script Author  : fearfx
    Script Date    : 2017.01.24 11:01:02
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
    if SpellName == "gather " then
        Despawn(NPC)
	SummonItem(Spawn, 6486)
    end
end