--[[
        Script Name     : SpawnScripts/Butcherblock/HessekThornton.lua
	Script Purpose	: Hessek Thornton <Butcherblock Dock Authority>
	Script Author	: jakejp
	Script Date	: 2018.05.30
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
--]]

function spawn(NPC)
  MovementLoopAddLocation(NPC, 607.97, 24.21, 589.22, 2)
  MovementLoopAddLocation(NPC, 624.88, 25.91, 590.14, 2)
  MovementLoopAddLocation(NPC, 625.14, 25.91, 565.13, 2)
  MovementLoopAddLocation(NPC, 652.73, 25.91, 565.34, 2)
  MovementLoopAddLocation(NPC, 655.41, 25.91, 577.74, 2)
  MovementLoopAddLocation(NPC, 739.92, 25.91, 576.86, 2)
  MovementLoopAddLocation(NPC, 740.40, 24.00, 537.17, 2)
  MovementLoopAddLocation(NPC, 739.92, 25.91, 576.86, 2)
  MovementLoopAddLocation(NPC, 655.41, 25.91, 577.74, 2)
  MovementLoopAddLocation(NPC, 652.73, 25.91, 565.34, 2)
  MovementLoopAddLocation(NPC, 625.14, 25.91, 565.13, 2)
  MovementLoopAddLocation(NPC, 624.88, 25.91, 590.14, 2)
  MovementLoopAddLocation(NPC, 605.66, 24.21, 590.12, 2)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)

    PlayFlavor(NPC, "", "Greetings, welcome to the Butcherblock Mountains.", "hello", 1689589577, 4560189, Spawn)
end


function respawn(NPC)
    spawn(NPC)
end

