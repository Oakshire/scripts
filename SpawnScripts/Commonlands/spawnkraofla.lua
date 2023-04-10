--[[
    Script Name    : SpawnScripts/Commonlands/spawnkraofla.lua
    Script Author  : cynnar
    Script Date    : 2023.04.10 12:04:35
    Script Purpose : 
                   : 
--]]

local SearchForTheMissing = 573

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange", Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    local zone = GetZone(Spawn)
    
    if HasQuest(Spawn, SearchForTheMissing) and GetQuestStep(Spawn, SearchForTheMissing) == 2 then
        local Kraofla = SpawnMob(zone, 330291, false, -589.91, -49.14, -626.17, 175.95)
    end
end

function LeaveRange(NPC, Spawn)

end