--[[
    Script Name    : SpawnScripts/DrayeksChamber/Misty.lua
    Script Author  : Neveruary
    Script Date    : 2022.07.17 09:07:41
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
end

function death(NPC, Spawn)
local drayek = GetSpawn(NPC, 1930003)
local zone = GetZone(NPC)
local add1 = GetSpawnByLocationID(zone, 351406)
local add2 = GetSpawnByLocationID(zone, 351408)
    if IsAlive(add1) == true then
        elseif IsAlive(add2) == true then
            else
                SetTempVariable(drayek, "addsphase", "2")
                AddTimer(drayek, 500, "wolfDeath", 1, Spawn)
    end
end

function respawn(NPC)
	spawn(NPC)
end