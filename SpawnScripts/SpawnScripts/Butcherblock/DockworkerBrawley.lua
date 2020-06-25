--[[
	Script Name	: SpawnScripts/Butcherblock/DockworkerBrawley.lua
	Script Purpose	: Dockworker Brawley 
	Script Author	: jakejp
	Script Date	: 2018.05.30
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
  MovementLoopAddLocation(NPC, 681.01, 24.00, 600.88, 2, 0)
  MovementLoopAddLocation(NPC, 670.58, 24.00, 610.84, 2, 0)
  MovementLoopAddLocation(NPC, 714.49, 24.00, 576.52, 2, 0)
  MovementLoopAddLocation(NPC, 735.35, 25.91, 575.73, 2, 0)
  MovementLoopAddLocation(NPC, 735.56, 25.91, 578.77, 2, 0)
  MovementLoopAddLocation(NPC, 714.46, 24.00, 577.21, 2, 0)
  MovementLoopAddLocation(NPC, 703.50, 24.00, 592.02, 2, 0)
  MovementLoopAddLocation(NPC, 706.65, 24.00, 598.91, 2, 0)
  MovementLoopAddLocation(NPC, 711.23, 24.00, 600.93, 2, 0)
  MovementLoopAddLocation(NPC, 695.57, 24.00, 601.45, 2, 0)

end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "", "Welcome to the Butcherblock Docks. Now, grab a hammer and make yourself useful.", "", 1689589577, 4560189, Spawn)
end
