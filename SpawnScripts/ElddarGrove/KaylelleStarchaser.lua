--[[
	Script Name	: SpawnScripts/ElddarGrove/KaylelleStarchaser.lua
	Script Purpose	: Kaylelle Starchaser 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_woodelf_gf_1f97d15c.mp3", "May your life be filled with the green of trees and your heart be filled with ...hope.", "", 1410070569, 2067586254, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gf_c91da8a3.mp3", "I have nothing to say to you right now.", "shrug", 2086714174, 1576219530, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gf_15163426.mp3", "You talk to strangers?  What's the purpose of that?", "", 3457658686, 921014902, Spawn)
	else
	end

end

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 614.94, -20.82, -260.61, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 630.77, -19.78, -256.17, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 644.08, -19.01, -263.39, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 649.33, -20.72, -284.7, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.01, -21.79, -293.97, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 649.67, -21.64, -304.66, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 639.98, -20.33, -310.22, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 592.56, -21.15, -316.11, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 558.55, -21.89, -316.44, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 541.91, -18.75, -367.38, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 558.55, -21.89, -316.44, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 592.56, -21.15, -316.11, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 639.98, -20.33, -310.22, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 649.67, -21.64, -304.66, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.01, -21.79, -293.97, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 649.33, -20.72, -284.7, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 644.08, -19.01, -263.39, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 630.77, -19.78, -256.17, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 614.94, -20.82, -260.61, 2, math.random(0,8))
end
