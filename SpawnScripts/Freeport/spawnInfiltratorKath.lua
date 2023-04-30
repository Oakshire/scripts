--[[
    Script Name    : SpawnScripts/Freeport/spawnInfiltratorKath.lua
    Script Author  : cynnar
    Script Date    : 2023.04.30 01:04:37
    Script Purpose : 
                   : 
--]]

local QuellingTheRebellion = 5807

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange", Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    
    AddTimer(NPC, 3000, "SpawnKath", 1, Spawn)
    
end

function LeaveRange(NPC, Spawn)

end

function SpawnKath(NPC, Spawn)
    local zone = GetZone(Spawn)
    
    if HasQuest(Spawn, QuellingTheRebellion) then
        if GetQuestStep(Spawn, QuellingTheRebellion) == 3 then
            if GetSpawnByLocationID(zone, 133784675) == nil then
                Say(NPC, "You are currently on step " .. GetQuestStep(Spawn, QuellingTheRebellion))
                local InfiltratorKath = SpawnMob(zone, 5590963, false, -99.12, -11.00, -76.83, 362.84)
            end
        end
    end
end
