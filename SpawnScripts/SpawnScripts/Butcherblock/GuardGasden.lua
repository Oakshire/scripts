--[[
    Script Name    : SpawnScripts/Butcherblock/GuardGasden.lua
	Script Purpose	: Guard Gasden 
	Script Author	: jakejp
	Script Date	: 2018.05.30
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

leader = 1080032

function spawn(NPC)
  MovementLoopAddLocation(NPC, 607.97, 24.21, 589.22, 2)
  MovementLoopAddLocation(NPC, 623.07, 25.91, 588.79, 2)
  MovementLoopAddLocation(NPC, 623.52, 25.91, 566.96, 2)
  MovementLoopAddLocation(NPC, 650.37, 25.91, 563.87, 2)
  MovementLoopAddLocation(NPC, 652.73, 25.91, 565.34, 2)
  MovementLoopAddLocation(NPC, 653.51, 25.91, 575.43, 2)
  MovementLoopAddLocation(NPC, 722.53, 24.00, 574.92, 2)
  MovementLoopAddLocation(NPC, 734.92, 25.91, 575.06, 2)
  MovementLoopAddLocation(NPC, 740.40, 24.00, 537.17, 2)
  MovementLoopAddLocation(NPC, 734.92, 25.91, 575.06, 2)
  MovementLoopAddLocation(NPC, 653.51, 25.91, 575.43, 2)
  MovementLoopAddLocation(NPC, 652.73, 25.91, 565.34, 2)
  MovementLoopAddLocation(NPC, 650.37, 25.91, 563.87, 2)
  MovementLoopAddLocation(NPC, 623.52, 25.91, 566.96, 2)
  MovementLoopAddLocation(NPC, 623.07, 25.91, 588.79, 2)
  MovementLoopAddLocation(NPC, 605.66, 24.21, 590.12, 2)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

end


