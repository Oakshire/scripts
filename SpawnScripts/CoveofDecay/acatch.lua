--[[
    Script Name    : SpawnScripts/CoveofDecay/acatch.lua
    Script Author  : Neveruary
    Script Date    : 2022.03.02 02:03:42
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function death(NPC, Spawn)
local zone = GetZone(NPC)
local rognogx2 = GetSpawn(NPC, 3110002)
    AddTimer(rognogx2, 1000, "fishcheck", 1, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end