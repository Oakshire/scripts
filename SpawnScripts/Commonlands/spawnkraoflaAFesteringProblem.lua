--[[
    Script Name    : SpawnScripts/Commonlands/spawnkraoflaAFesteringProblem.lua
    Script Author  : cynnar
    Script Date    : 2023.04.10 05:04:33
    Script Purpose : 
                   : 
--]]

local AFesteringProblem = 5800

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function QeynosinaCheck(NPC, Spawn)
    local zone = GetZone(NPC)
    
    local aQeynosianScout1 = GetSpawnByLocationID(zone, 299822)
    local aQeynosianScout2 = GetSpawnByLocationID(zone, 299824)
    local aQeynosianScout3 = GetSpawnByLocationID(zone, 299825)
    local aQeynosianProtector = GetSpawnByLocationID(zone, 299826)
    
    
    if HasQuest(Spawn, AFesteringProblem) and GetQuestStep(Spawn, AFesteringProblem) == 1 then
        Say(NPC, "Has Quest")
        
        if IsAlive(aQeynosianScout1) == false and IsAlive(aQeynosianScout2) == false and IsAlive(aQeynosianScout3) == false and IsAlive(aQeynosianProtector) == false then
            Say(NPC, "All Dead")
            SpawnMob(zone, 330291, false, 427.20, -25.02, -894.543, 0)
        end
    end
end