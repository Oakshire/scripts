--[[
    Script Name    : SpawnScripts/Freeport/spawnJeththeSpy.lua
    Script Author  : cynnar
    Script Date    : 2023.04.29 09:04:51
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
    local zone = GetZone(Spawn)
    
    if HasQuest(Spawn, QuellingTheRebellion) then
        if GetQuestStep(Spawn, QuellingTheRebellion) == 1 then
            if GetSpawnByLocationID(zone, 133784673) ==nil then
                local JethTheSpy = SpawnMob(zone, 5590962, false, -124.97, -37.62, -19.76, 312.75)
                Attack(JethTheSpy, Spawn)
            end
        end
    end
end

function LeaveRange(NPC, Spawn)

end
