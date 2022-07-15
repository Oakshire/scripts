--[[
	Script Name		: SpawnScripts/BigBend/KarakiatBonewalker.lua
	Script Purpose	: Karakiat Bonewalker
	Script Author	: torsten
	Script Date		: 2022.07.10
	Script Notes	: 
--]]

function spawn(NPC)
    waypoints(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_hail_gf_417aa823.mp3", "Nasty scars and boiled tar!  Warriors is what we are!", "itch", 1257994883, 3501955854, Spawn, 0)
	elseif choice == 2 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_ogre_gf_b1f3691c.mp3", "Not mess with you, not mess with me...", "wince", 1032294332, 3970520281, Spawn, 0)
	elseif choice == 3 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_darkelf_gf_50ad1ae0.mp3", "Treat us badly in Neriak! I laugh now we in same spot!", "chuckle", 3570765081, 2205040834, Spawn, 0)
	elseif choice == 4 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_hail_gf_f491bc11.mp3", "Tasty treats, lots of meats.", "nod", 357958006, 4074544132, Spawn, 0)
	end
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -21.31, 3.36, -26.12, 2, 0)
	MovementLoopAddLocation(NPC, -27.83, 3.92, -23.14, 2, 0)
	MovementLoopAddLocation(NPC, -36, 4.2, -16.78, 4, 0)
	MovementLoopAddLocation(NPC, -51.65, 3.99, -3.32, 2, math.random(1,2))
	MovementLoopAddLocation(NPC, -54, 3.85, -0.35, 2, 0)
	MovementLoopAddLocation(NPC, -54.99, 2.49, 8.06, 2, 0)
	MovementLoopAddLocation(NPC, -49.58, 0.7, 19.68, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -42.09, -0.69, 28.2, 2, 0)
	MovementLoopAddLocation(NPC, -36.83, -0.4, 39.85, 2, 0)
	MovementLoopAddLocation(NPC, -42.44, -0.59, 27.68, 2, 0)
	MovementLoopAddLocation(NPC, -34.24, 0.25, 21.47, 3, 0)
	MovementLoopAddLocation(NPC, -20.23, 0.04, 13.24, 2, 0)
	MovementLoopAddLocation(NPC, -16.2, 0, 10.52, 2, 0)
	MovementLoopAddLocation(NPC, -2.48, 0.06, 11.85, 2, 0)
	MovementLoopAddLocation(NPC, 12.72, 0, 1.77, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 0.99, 0, -10.18, 2, 0)
	MovementLoopAddLocation(NPC, -14.67, 0, -8.37, 2, 0)
	MovementLoopAddLocation(NPC, -16.42, 0, 2.82, 2, 0)
	MovementLoopAddLocation(NPC, -9.46, 0, 11.77, 2, math.random(1,2))
	MovementLoopAddLocation(NPC, 7.12, 0.01, 9.36, 2, 0)
	MovementLoopAddLocation(NPC, 27.49, -0.69, 14.77, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 43.47, -1.41, 9.78, 2, 0)
	MovementLoopAddLocation(NPC, 37.62, -1.24, -10.09, 2, 0)
	MovementLoopAddLocation(NPC, 33.45, -0.36, -15.25, 7, 0)
	MovementLoopAddLocation(NPC, 20.03, 1.1, -22.55, 2, 0)
	MovementLoopAddLocation(NPC, 9.64, 1.85, -28.2, 2, 0)
	MovementLoopAddLocation(NPC, -1.57, 2.81, -29.8, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -17.35, 3, -29.89, 2, 0)
	MovementLoopAddLocation(NPC, -21.11, 3.37, -26.09, 2, 0)
end