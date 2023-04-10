--[[
    Script Name    : SpawnScripts/Commonlands/aQeynosianprotector.lua
    Script Author  : cynnar
    Script Date    : 2023.04.10 04:04:11
    Script Purpose : 
                   : 
--]]


function spawn(NPC)

end

function respawn(NPC)
	spawn(NPC)
end

function death(NPC, Spawn)
    local zone = GetZone(NPC)
    local spawnkraoflaAFesteringProblem = GetSpawn(NPC, 331141)
    
    AddTimer(spawnkraoflaAFesteringProblem, 2000, "QeynosinaCheck", 1, Spawn)
end