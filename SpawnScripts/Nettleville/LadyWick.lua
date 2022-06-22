--[[
    Script Name    : SpawnScripts/Nettleville/LadyWick.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.21 04:06:12
    Script Purpose : 
                   : 
--]]


dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	            if GetFactionAmount(Spawn,11) < 0 then  
                FactionChecking(NPC, Spawn, faction)
                else
				local choice = math.random(1,9)
	                if choice == 1 then
		            PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_aeb1a20f.mp3", "It is with honor that I welcome you to our community.", "thanks", 157565536, 4238836509, Spawn)
	                elseif choice == 2 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_a6a7e923.mp3", "Hail to you, it is indeed a pleasure.", "bye", 224557122, 3782103568, Spawn)
	                elseif choice == 3 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_869cb34a.mp3", "Hello, young adventurer. It is with the utmost delight that I greet you.", "curtsey", 1236739692, 2465236460, Spawn)
	                elseif choice == 4 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_aoi_gf_4d69aa69.mp3", "Confound those infernal gnomes and their diabolical gadgets!", "frustrated", 683761969, 2806224893, Spawn)
	                elseif choice == 5 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_e35fd511.mp3", "Wonderful to make your acquaintance!  Do you find this scenery as whimsical as I?  The day is truely blessed.", "curtsey", 3515560120, 1635596676, Spawn)
	                elseif choice == 6 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_42dc41ff.mp3", "Well met.  I find great solace in our meetings.", "bow", 1972105344, 498797338, Spawn)
	                elseif choice == 7 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_e70b6b86.mp3", "Hello!  It is always good to meet someone new in our peaceful village.", "bye", 2113607646, 1301209736, Spawn)
	                elseif choice == 8 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_17bda578.mp3", "Hail!  It is ecouraging to see bright faces, such as yours, arrive in the everlasting city of Qeynos.", "hello", 1027180785, 1173518799, Spawn)
	                elseif choice == 9 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_837db26f.mp3", "Hail to you, friend!  I hope you have many happy returns to quaint town.", "nod", 4187653090, 1385095205, Spawn)

                end
                end
end

function InRange(NPC,Spawn)
	if GetFactionAmount(Spawn,11) < 0 then  
    FactionCheckingCallout(NPC, Spawn, faction)
    end
 end   