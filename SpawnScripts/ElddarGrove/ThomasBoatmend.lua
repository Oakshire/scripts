--[[
	Script Name	: SpawnScripts/ElddarGrove/ThomasBoatmend.lua
	Script Purpose	: Thomas Boatmend 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gm_15163426.mp3", "You talk to strangers?  What's the purpose of that?", "", 1620470786, 1752689340, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_woodelf_gm_2fa5fd3b.mp3", "We'll have to get together for a goblet of wine sometime soon.  Your treat.", "", 2999782150, 334868042, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_woodelf_gm_876eb977.mp3", "I wish I had \"good old days\" to remember, like you do.  Ah, well.  Best to worry about today and not yesterday.", "", 918037021, 185336532, Spawn)
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
	MovementLoopAddLocation(NPC, 608.2, -22.42, -262.67, 2, math.random(0,40))
	MovementLoopAddLocation(NPC, 628, -19.98, -255.72, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 648.99, -18.69, -259.97, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 668.55, -17.16, -252.57, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 696.95, -16.92, -266.28, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 727.46, -17.12, -283.24, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 748.5, -16.63, -286.53, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 772.33, -18.05, -316.26, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 771.52, -21.32, -339.44, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 769.78, -19.46, -332.72, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 707.06, -17.27, -330.28, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.79, -20.69, -284.66, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 648.31, -13.81, -350.1, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 649, -13.04, -360.21, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 705.57, -15.84, -377.92, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 700.97, -16.22, -424.97, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 710.26, -20.39, -450.74, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 700.58, -16.23, -425.43, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 679.65, -12.02, -416.88, 2, math.random(0,40))
	MovementLoopAddLocation(NPC, 700.58, -16.23, -425.43, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 710.26, -20.39, -450.74, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 700.97, -16.22, -424.97, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 705.57, -15.84, -377.92, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 649, -13.04, -360.21, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 648.31, -13.81, -350.1, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.79, -20.69, -284.66, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 707.06, -17.27, -330.28, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 769.78, -19.46, -332.72, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 771.52, -21.32, -339.44, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 772.33, -18.05, -316.26, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 748.5, -16.63, -286.53, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 727.46, -17.12, -283.24, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 696.95, -16.92, -266.28, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 668.55, -17.16, -252.57, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 648.99, -18.69, -259.97, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 628, -19.98, -255.72, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 608.2, -22.42, -262.67, 2, math.random(0,40))
end

