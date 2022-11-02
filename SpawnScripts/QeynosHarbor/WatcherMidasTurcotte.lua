--[[
    Script Name    : SpawnScripts/QeynosHarbor/WatcherMidasTurcotte.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.27 03:10:05
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 11, "InRange", "LeaveRange")		
 waypoints(NPC)
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
     if math.random(1, 100) <= 65 then
 	FaceTarget(NPC,Spawn)
	RandomGreeting(NPC, Spawn)
    end
    end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
       if GetFactionAmount(Spawn,11) <0 then
    	FaceTarget(NPC, Spawn)
        choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 1584866727, 581589457, Spawn)
        end
   else
    FaceTarget(NPC,Spawn)
	RandomGreeting(NPC, Spawn)
end
end

function RandomGreeting(NPC, Spawn)
	local choice = math.random(1, 5)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_celestialwatch/ft/eco/good/highelf_eco_good_celestialwatch_hail_gm_1a077d47.mp3", "The Qeynos Guard blindly strikes at the darkness rather than see the opportunity for redemption that lies within even the most lost of us.", "", 970013852, 575367438, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_celestialwatch/ft/eco/good/highelf_eco_good_celestialwatch_hail_gm_3af79ac9.mp3", "While their fellow citizens struggle against the tides of evil, the Tunarian Alliance worries itself with the plight of soulless plants and animals.", "", 3394764444, 3959777727, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_celestialwatch/ft/eco/good/highelf_eco_good_celestialwatch_hail_gm_87dd538b.mp3", "Were they to encounter a god, the Concordium would drop their staves and bow before the might of a true power.", "", 3531845971, 679110479, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_celestialwatch/ft/eco/good/highelf_eco_good_celestialwatch_hail_gm_d1a0f4da.mp3", "The Celestial Watch preserves the rituals of servitude to the gods so that all might experience through worship the return of the ancient deities.", "", 3161458185, 1498528167, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_celestialwatch/ft/eco/good/highelf_eco_good_celestialwatch_hail_gm_e796f41.mp3", "The Ironforge Exchange neglects the spiritual through its devotion to the physical materials and pleasures of this world.", "", 1452894482, 3882311847, Spawn, 0)
	end
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 781.84, -18.81, -79.99, 2, 22)
	MovementLoopAddLocation(NPC, 779.87, -20.98, -68.24, 2, 22)
	MovementLoopAddLocation(NPC, 788.28, -20.75, -67.48, 2, 22)
	MovementLoopAddLocation(NPC, 793.27, -20.81, -66.48, 2, 0)
	MovementLoopAddLocation(NPC, 795.7, -20.87, -65.55, 2, 22)
	MovementLoopAddLocation(NPC, 800.37, -20.75, -52.84, 2, 22)
	MovementLoopAddLocation(NPC, 789.11, -21.08, -62.6, 2, 0)
	MovementLoopAddLocation(NPC, 786.11, -19.2, -74.9, 2, 0)
	MovementLoopAddLocation(NPC, 788.55, -18.56, -77.81, 2, 22)
	MovementLoopAddLocation(NPC, 785.15, -19.94, -72.6, 2, 0)
	MovementLoopAddLocation(NPC, 791.92, -19.89, -73.06, 2, 0)
	MovementLoopAddLocation(NPC, 800.56, -19.39, -76.39, 2, 22)
	MovementLoopAddLocation(NPC, 798.73, -19.64, -74.33, 2, 0)
	MovementLoopAddLocation(NPC, 788.47, -18.5, -80.33, 2, 22)
end
