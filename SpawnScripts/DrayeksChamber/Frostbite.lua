--[[
    Script Name    : SpawnScripts/DrayeksChamber/Frostbite.lua
    Script Author  : Neveruary
    Script Date    : 2022.07.17 09:07:32
    Script Purpose : Governs behavior of Frostbite in Drayek's Chamber.
    Script Notes   : Spell collects are pending. The wolves send a timer to Drayek once they're dead so he attacks.
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
                AddTimer(drayek, 10000, "wolfDeath", 1, Spawn)
    end
end

function respawn(NPC)
	spawn(NPC)
end