--[[
    Script Name    : SpawnScripts/DrayeksChamber/afrozenvigilant.lua
    Script Author  : Neveruary
    Script Date    : 2022.07.17 09:07:08
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function death(NPC, Spawn)
local zone = GetZone(NPC)
local add1 = GetSpawnByLocationID(zone, 351396)
local add2 = GetSpawnByLocationID(zone, 351398)
local add3 = GetSpawnByLocationID(zone, 351399)
    if IsAlive(add1) == true then
        elseif IsAlive(add2) == true then
        elseif IsAlive(add3) == true then
            else
                AddTimer(NPC, 500, "frozencheck", 1, Spawn)
    end
end

function frozencheck(NPC, Spawn)
local drayek = GetSpawn(NPC, 1930003)
local zone = GetZone(NPC)
local add1 = GetSpawnByLocationID(zone, 351401)
local add2 = GetSpawnByLocationID(zone, 351404)
local add3 = GetSpawnByLocationID(zone, 351405)
    if IsAlive(add1) == true then
        elseif IsAlive(add2) == true then
        elseif IsAlive(add3) == true then
            else
                SetTempVariable(drayek, "addsphase", "1")
                AddTimer(drayek, 500, "addsSpawn", 1, Spawn)
                
    end
end

function respawn(NPC)
	spawn(NPC)
end