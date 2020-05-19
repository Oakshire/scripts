--[[
    Script Name    : SpawnScripts/QueensColony/ATaintedSapswillTapper429371.lua
    Script Author  : Rylec
    Script Date    : 2020.05.12 10:05:17
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
        EmoteLoop(NPC) 
        DeadDeerSpawn(NPC)   
end

function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
        PlayAnimation(NPC, 0)
        AddTimer(NPC, 60, "EmoteLoop")
end

function respawn(NPC)

end

function EmoteLoop (NPC)
        local choice = math.random(1,2)
        local timer = math.random(2500,3500)
  
        if choice1 == 1 then
                PlayAnimation(NPC, 11400)
                AddTimer(NPC, timer, "EmoteLoop")
        else
                PlayAnimation(NPC, 11399)
                AddTimer(NPC, timer, "EmoteLoop")
        end
end

function DeadDeerSpawn(NPC)
        Say(NPC, "Called")
        local zone = GetZone(NPC)
        local newSpawn = SpawnByLocationID(zone, 429338)
        if newSpawn ~= nil then
        Shout(newSpawn, "Test")
        end
end