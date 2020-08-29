--[[
    Script Name    : SpawnScripts/ScaleYard2/acorruptMilitiaguard.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.28 07:08:31
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
  EmoteLoop (NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

function EmoteLoop(NPC)
 local choice = math.random(1,2)
        local timer = math.random(2500,3500)
  
        if choice == 1 then
                PlayAnimation(NPC, 12182)
                AddTimer(NPC, timer, "EmoteLoop")
        else
                PlayAnimation(NPC, 2809)
                AddTimer(NPC, timer, "EmoteLoop")
        end
end