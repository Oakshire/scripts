--[[
    Script Name         : SpawnScripts/Butcherblock/DockworkerKelson.lua
    Script Purpose	: Dockworker Kelson 
    Script Author	: jakejp
    Script Date	        : 2018.05.30
    Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
  MovementLoopAddLocation(NPC, 654.00, 24.01, 549.97, 2)
  MovementLoopAddLocation(NPC, 649.91, 25.91, 566.57, 2)
  MovementLoopAddLocation(NPC, 641.86, 25.92, 565.96, 2)
  MovementLoopAddLocation(NPC, 624.84, 25.91, 564.94, 2)
  MovementLoopAddLocation(NPC, 624.93, 25.91, 589.13, 2)
  MovementLoopAddLocation(NPC, 632.71, 26.00, 596.75, 2)
  MovementLoopAddLocation(NPC, 624.93, 25.91, 589.13, 2)
  MovementLoopAddLocation(NPC, 624.84, 25.91, 564.94, 2)
  MovementLoopAddLocation(NPC, 641.86, 25.92, 565.96, 2)
  MovementLoopAddLocation(NPC, 649.91, 25.91, 566.57, 2)
  MovementLoopAddLocation(NPC, 654.00, 24.01, 549.97, 2)

end

function respawn(NPC)
	spawn(NPC)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Welcome to the Butcherblock Docks. Now, grab a hammer and make yourself useful.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "If those rustfiends eat another one of my tools, I'll have to hammer those nails in with my fist!", "", 1689589577, 4560189, Spawn)
	else
	end

end