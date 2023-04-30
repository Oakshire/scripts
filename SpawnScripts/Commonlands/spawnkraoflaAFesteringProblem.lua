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
    if HasQuest(Spawn, AFesteringProblem) and GetQuestStep(Spawn, AFesteringProblem) == 1 then
        allDead(NPC, Spawn)
    end
end

function allDead(NPC, Spawn)
    Say(NPC, "All Dead function")
    local zone = GetZone(NPC)
    
    local aQeynosianScout1 = GetSpawnByLocationID(zone, 299822)
    local aQeynosianScout2 = GetSpawnByLocationID(zone, 299824)
    local aQeynosianScout3 = GetSpawnByLocationID(zone, 299825)
    local aQeynosianProtector = GetSpawnByLocationID(zone, 299826)
    
    if GetSpawnByLocationID(zone, 299822) == nil then
        Say(NPC, "Spawn 299822 is false")
    end
    
    if GetSpawnByLocationID(zone, 299824) == nil then
        Say(NPC, "Spawn 299824 is false")
    end
    
    if GetSpawnByLocationID(zone, 299825) == nil then
        Say(NPC, "Spawn 299825 is false")
    end
    
    if GetSpawnByLocationID(zone, 299826) == nil then
        Say(NPC, "Spawn 299826 is false")
    end
    
    
    if IsAlive(aQeynosianScout1) == false and IsAlive(aQeynosianScout2) == false and IsAlive(aQeynosianScout3) == false and IsAlive(aQeynosianProtector) == false then
        Say(NPC, "All Dead")
        Say(NPC, "FUCK YOU")
        SpawnMob(zone, 330291, false, 427.20, -25.02, -894.543, 0)
        Say(NPC, "CUNTY FROG")
    end
end
    