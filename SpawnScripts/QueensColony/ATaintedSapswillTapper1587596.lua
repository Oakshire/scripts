--[[
        Script Name    : SpawnScripts/QueensColony/ATaintedSapswillTapper1587596.lua
        Script Author  : Rylec
        Script Date    : 2020.05.12 10:05:17
        Script Purpose : Animations for Sapswills and spawn/despawn of Dead Deer
--]]

function spawn(NPC)
        EmoteLoop(NPC)
        DeadDeerSpawn(NPC) 
end

function hailed(NPC, Spawn)
--      FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function EmoteLoop (NPC)
        local choice = math.random(1,2)
        local timer = math.random(2500,3500)
  
        if choice == 1 then
                PlayAnimation(NPC, 11400)
                AddTimer(NPC, timer, "EmoteLoop")
        else
                PlayAnimation(NPC, 11399)
                AddTimer(NPC, timer, "EmoteLoop")
        end
end

function DeadDeerSpawn(NPC)
        local zone = GetZone(NPC)
        local newSpawn = SpawnByLocationID(zone, 1587605)
end

function death(NPC, Spawn)
        AddTimer(NPC, 10000, "DespawnDeadDeer")        
end

function DespawnDeadDeer(NPC)
        local zone = GetZone(NPC)
        local deadDeer = GetSpawnByLocationID(zone, 1587605) 
        Despawn(deadDeer)
end



--[[
THESE ATTEMPTS DIDN'T WORK (IT SEEMS LIKE LOCATION ID IS ALWAYS A NUMBER REGARDLESS OF SPAWN IS IN GAME OR NOT.
WE DECIDED TO PUT IN A TIMER BEFORE DESPAWN INSTEAD FOR NOW WHICH SEEMS TO WORK WELL...

function death(NPC, Spawn)
--  This function despawn the dead deer when the last of the two sapswills is dead
        local zone = GetZone(NPC)
        local newSpawn2 = GetSpawnByLocationID(zone, 1587597)
        local deadDeer = GetSpawnByLocationID(zone, 1587605) 

        if newSpawn2 ~= nil then  
            Despawn(deadDeer)
        end
end


function death(NPC, Spawn)
--  This function despawn the dead deer when the last of the two sapswills is dead
        local zone = GetZone(NPC)
        local newSpawn = GetSpawnByLocationID(zone, 1587596)
        local newSpawn2 = GetSpawnByLocationID(zone, 1587597)
        local deadDeer = GetSpawnByLocationID(zone, 1587605) 

        if newSpawn ~= nil and newSpawn2 ~= nil then  
            Despawn(deadDeer)
        end
end
--]]