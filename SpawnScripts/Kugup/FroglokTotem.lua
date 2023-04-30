--[[
    Script Name    : SpawnScripts/Kugup/FroglokTotem.lua
    Script Author  : neatz09
    Script Date    : 2023.04.29 06:04:40
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, Message)
    local Zone = GetZone(NPC)
    local sign = 484016
    local signloc = GetSpawnByLocationID(Zone, sign)
    if Message == "activateportalstone" and signloc == nil then SpawnByLocationID(Zone, sign)
        end
end

function respawn(NPC)
	spawn(NPC)
end 