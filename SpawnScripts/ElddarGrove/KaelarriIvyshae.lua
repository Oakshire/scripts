--[[
	Script Name	: SpawnScripts/ElddarGrove/KaelarriIvyshae.lua
	Script Purpose	: Kaelarri Ivyshae 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gf_31587971.mp3", "Greetings, friend.  I hope your visit to the city brings both inner peace and prosperity.", "curtsey", 999961843, 2491010297, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gf_10181485.mp3", "The forces of good are all wrought from the strength of the innocent.", "bow", 1746715399, 2834476927, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gf_45ac4aea.mp3", "I never thought it would be so difficult to carry on.  I have no songs left in my heart.", "sigh", 2446660394, 3437698252, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gf_46ea1119.mp3", "So much blood and so many lost.  I never believed it would end this way.", "sad", 1351206018, 3386717578, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gf_67432087.mp3", "We must remain steady against the influence of evil.  Only with perseverance will Qeynos survive!", "shakefist", 927768431, 1576503790, Spawn)
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
	MovementLoopAddLocation(NPC, 649.78, -17.86, -205.23, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 648.62, -18.52, -254.29, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.62, -21.7, -293.3, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.1, -21.9, -302.8, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 639.36, -20.31, -310.61, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 608.37, -20.8, -313.51, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 550.27, -21.46, -312.73, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 537.88, -20.8, -297.38, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 576.67, -20.63, -261.1, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 591.64, -21.03, -254.6, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 576.67, -20.63, -261.1, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 537.88, -20.8, -297.38, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 550.27, -21.46, -312.73, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 608.37, -20.8, -313.51, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 639.36, -20.31, -310.61, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.1, -21.9, -302.8, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.62, -21.7, -293.3, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 648.62, -18.52, -254.29, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 649.78, -17.86, -205.23, 2, math.random(0,8))
end
