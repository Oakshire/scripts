--[[
    Script Name    : SpawnScripts/ScaleYard2/anaccusedcitizen.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.30 08:08:49
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
 EmoteLoop (NPC)
 SetPlayerProximityFunction(NPC, 20, "InRange", "InRange")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

function InRange(NPC, Spawn)
PlayersLevel = GetLevel(Spawn)
SpawnSet(NPC, "level", PlayersLevel)
end


function EmoteLoop(NPC)
 local choice = math.random(1,2)
        local timer = math.random(2500,3500)
  
        if choice == 1 then
                PlayAnimation(NPC, 10844)
                AddTimer(NPC, timer, "EmoteLoop")
        else
                PlayAnimation(NPC, 12166)
                AddTimer(NPC, timer, "EmoteLoop")
        end
end