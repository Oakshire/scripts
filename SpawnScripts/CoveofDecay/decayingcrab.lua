--[[
    Script Name    : SpawnScripts/CoveofDecay/decayingcrab.lua
    Script Author  : Neveruary
    Script Date    : 2022.03.02 03:03:17
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "attackable", "0")
end

function respawn(NPC)
	spawn(NPC)
end