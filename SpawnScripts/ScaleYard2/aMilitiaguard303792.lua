--[[
    Script Name    : SpawnScripts/ScaleYard2/aMilitiaguard303792.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.30 08:08:56
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
  SetPlayerProximityFunction(NPC, 50, "InRange", "InRange")
  EmoteLoop (NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

function EmoteLoop(NPC)
 local choice = math.random(1,3)
        local timer = math.random(2500,3500)
  
        if choice == 1 then
                PlayAnimation(NPC, 12214)
                AddTimer(NPC, timer, "EmoteLoop")
        elseif choice == 2 then
                PlayAnimation(NPC, 12187)
                AddTimer(NPC, timer, "EmoteLoop")
        elseif choice == 3 then
                PlayAnimation(NPC, 12329)
                AddTimer(NPC, timer, "EmoteLoop")
        else
                PlayAnimation(NPC, 11285)
                AddTimer(NPC, timer, "EmoteLoop")
        end
end


function InRange(NPC, Spawn)
PlayersLevel = GetLevel(Spawn)
SpawnSet(NPC, "level", PlayersLevel)
end
