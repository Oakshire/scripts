--[[
    Script Name    : SpawnScripts/Commonlands/aBloodskullwarrior.lua
    Script Author  : premierio015, gloat
    Script Date    : 2019.01.31 01:01:40
    Script Purpose : 
                   : 
--]]

local  FinishingtheNegotiations = 425



require "SpawnScripts/Generic/MovementCircleSmall"
function spawn(NPC)
    SpawnChooseRandomMovement(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end


function death(NPC, Spawn)
if HasQuest(Spawn,  FinishingtheNegotiations) then
AddStepProgress(Spawn, FinishingtheNegotiations, 4, 1)  
end
  end


function respawn(NPC)
         spawn(NPC)
end

