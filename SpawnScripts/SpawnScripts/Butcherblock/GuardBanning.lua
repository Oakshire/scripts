--[[
    Script Name    : SpawnScripts/Butcherblock/GuardBanning.lua
    Script Author  : jakejp
    Script Date    : 2018.05.30 08:05:41
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
  MovementLoopAddLocation(NPC, 607.97, 24.21, 589.22, 2)
  MovementLoopAddLocation(NPC, 623.78, 25.91, 591.10, 2)
  MovementLoopAddLocation(NPC, 626.74, 25.91, 563.09, 2)
  MovementLoopAddLocation(NPC, 650.17, 25.91, 567.49, 2)
  MovementLoopAddLocation(NPC, 657.09, 25.91, 579.54, 2)
  MovementLoopAddLocation(NPC, 734.28, 25.91, 579.42, 2)
  MovementLoopAddLocation(NPC, 741.71, 24.00, 546.19, 2)
  MovementLoopAddLocation(NPC, 734.28, 25.91, 579.42, 2)
  MovementLoopAddLocation(NPC, 657.09, 25.91, 579.54, 2)
  MovementLoopAddLocation(NPC, 650.17, 25.91, 567.49, 2)
  MovementLoopAddLocation(NPC, 626.74, 25.91, 563.09, 2)
  MovementLoopAddLocation(NPC, 623.78, 25.91, 591.10, 2)
  MovementLoopAddLocation(NPC, 605.66, 24.21, 590.12, 2)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)

end


function respawn(NPC)
    spawn(NPC)
end