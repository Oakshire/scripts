--[[
	Script Name		: SpawnScripts/NorthQeynos/ArthinDawnhammer.lua
	Script Purpose	: Arthin Dawnhammer
	Script Author	: Dorbin
	Script Date		: 2022.04.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")		
end

function InRange(NPC,Spawn)
       if GetFactionAmount(Spawn,11) <0 then
    	FaceTarget(NPC, Spawn)
        choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 1584866727, 581589457, Spawn)
        end
   else 
     if math.random(1, 100) <= 70 then
 	FaceTarget(NPC,Spawn)
	RandomGreeting(NPC, Spawn)
    end
    end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC,Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_celestialwatch/ft/eco/good/highelf_eco_good_celestialwatch_hail_gm_e796f41.mp3", "The Ironforge Exchange neglects the spiritual through its devotion to the physical materials and pleasures of this world.", "", 1452894482, 3882311847, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_celestialwatch/ft/eco/good/highelf_eco_good_celestialwatch_hail_gm_d1a0f4da.mp3", "The Celestial Watch preserves the rituals of servitude to the gods so that all might experience through worship the return of the ancient deities.", "", 3161458185, 1498528167, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_celestialwatch/ft/eco/good/highelf_eco_good_celestialwatch_hail_gm_1a077d47.mp3", "The Qeynos Guard blindly strikes at the darkness rather than see the opportunity for redemption that lies within even the most lost of us.", "", 970013852, 575367438, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_celestialwatch/ft/eco/good/highelf_eco_good_celestialwatch_hail_gm_87dd538b.mp3", "Were they to encounter a god, the Concordium would drop their staves and bow before the might of a true power.", "", 3531845971, 679110479, Spawn, 0)
	end
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -13.92, -3.86, -1.29, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, -9.7, -4.05, -5.45, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, -4.4, -4.07, -9.86, 2, 0)
	MovementLoopAddLocation(NPC, 3.4, -4.13, -9.36, 2, 0)
	MovementLoopAddLocation(NPC, 12.27, -3.9, -5.18, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 12.86, -3.92, -2.12, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 11.62, -4, -2.52, 2, 0)
	MovementLoopAddLocation(NPC, 6.58, -4.08, -8.33, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 1.23, -4.06, -10.88, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, -4.58, -4.09, -9.52, 2, 0)
	MovementLoopAddLocation(NPC, -9.25, -4.12, -3.82, 2, 0)
	MovementLoopAddLocation(NPC, -11.35, -4.02, 1.76, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, -7.57, -4.13, 6.34, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, -4.92, -4.07, 9.56, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 0.01, -4.12, 10.02, 2, 0)
	MovementLoopAddLocation(NPC, 7.32, -4.02, 8.85, 2, 0)
	MovementLoopAddLocation(NPC, 10.09, -4.11, 1.1, 2, 0)
	MovementLoopAddLocation(NPC, 8.04, -4.12, -6.04, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 1.7, -4.07, -10.68, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, -1.65, -3.91, -13.14, 2, 0)
	MovementLoopAddLocation(NPC, 1.61, -3.96, -12.41, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 7.86, -4.11, -6.51, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 11.27, -4.04, -0.52, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 11.7, -3.93, 5.38, 2, 0)
	MovementLoopAddLocation(NPC, 7.34, -4.07, 7.83, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 0.8, -4.12, 10.03, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, -3.22, -4.16, 8.88, 2, 0)
	MovementLoopAddLocation(NPC, -10.02, -4.05, 4.84, 2, math.random(0,8))
end


