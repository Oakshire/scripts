--[[
	Script Name		:	nightstalker.lua
	Script Purpose	:	Waypoint Path for nightstalker.lua
	Script Author	:	Devn00b
	Script Date		:	04/12/2020 11:16:46 AM
	Script Notes	:	Locations collected from Live
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
local Mikkel = GetSpawn(NPC,2220117)    
	FaceTarget(NPC, Spawn)
	if Mikkel ~=nil then
    FaceTarget(Mikkel,Spawn)
    end	
    GenericEcologyHail(NPC, Spawn, faction)
    
end

function InRange(NPC,Spawn)
    if GetFactionAmount(Spawn,11) <0 then
                 	local choice = math.random(1,9)
	                    if choice == 1 then
 	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_1a98f879.mp3", "How did you get past the city gates?!", "doubletake", 2984037816, 3824691347)
                       	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 1112175527, 3181748573)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_b24ac070.mp3", "Antonius Bayle!  Save us from this brute!", "scream", 271724567, 4059439523)
                     	elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 710627605, 2152359545)
                     	elseif choice == 5 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_48350e59.mp3", "You're not allowed in here!", "point", 1734668326, 429140096)
                     	elseif choice == 6 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 742840308, 1978260864)
                     	elseif choice == 7 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_5afcbd03.mp3", "The streets aren't safe with your kind upon them.", "no", 3192824592, 3089779490)
                     	elseif choice == 8 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_7e3f7ca.mp3", "I refuse to contaminate myself by conversing with you.", "sulk", 2165609155, 3535416550)
                     	elseif choice == 9 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_ad3832d1.mp3", "Guards! Guards!!!", "raisehand", 2229045167, 836806226)
                    	end	    
    local Mikkel = GetSpawn(NPC,2220117)    
	FaceTarget(NPC, Spawn)
	if Mikkel ~=nil then
    FaceTarget(Mikkel,Spawn)
	PlayFlavor(Mikkel, "", "", "shakefist", 0, 0)
    end	
else
    if math.random(1,100) <=30 then
                    	local choice = math.random(1,13)

                    	if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_7e3b456a.mp3", "Hail, pleasure to meet you.", "agree", 471367832, 2417424572)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_ef2b9651.mp3", "Will you quit pestering me?  Don't force me to summon the guards!", "tapfoot", 3345611839, 1442739842)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_26f4c608.mp3", "Greetings visitor, I'm glad to meet you.", "bye", 1300497520, 2713745446)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_13b79d2d.mp3", "Welcome!  Welcome traveler, to the fair city of Qeynos! My, isn't it a magnificent day?", "hello", 3746934207, 794965138)
		                elseif choice == 5 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_e58035f3.mp3", "What do you want? Leave me be!", "shrug", 1323474108, 3355478224)
                    	elseif choice == 6 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gm_2c5409ba.mp3", "Another lovely day in the city of Qeynos!", "sigh", 2759856909, 614688407)
                    	elseif choice == 7 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gm_4d212798.mp3", "I'm confident that the merchants of our village will fill all equipment needs with the utmost hospitality.", "smile", 2600666744, 586734676)
                    	elseif choice == 8 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_9b2049a3.mp3", "Well met, friend.  It's good to make your acquaintance!", "bow", 754727055, 3165426316)
                    	elseif choice == 9 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_3fc546db.mp3", "As a citzen of the mighty city of Qeynos, I greet you openly.", "hello", 2645256785, 1334313741)
		                elseif choice == 10 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_d38d1fff.mp3", "Ah, what have we here?  Glad to see you endured the journey here adventurer.", "ponder", 2806352129, 3453714070)
                    	elseif choice == 11 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_60dfe3da.mp3", "Welcome to Qeynos friend!", "nod", 3850495157, 2924033866)
                    	elseif choice == 12 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_34d7a9e6.mp3", "Well met!  Here in Qeynos you shall find a wealth of useful supplies.  More importantly, ale!", "smile", 3467166298, 3144147842)
                    	elseif choice == 13 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_5ec5f221.mp3", "Glad you made it.  Was the island as difficult as I remember?", "agree", 3870261841, 3828605353)
	                   	                    
	                    end
    local Mikkel = GetSpawn(NPC,2220117)    
	FaceTarget(NPC, Spawn)
	if Mikkel ~=nil then
    FaceTarget(Mikkel,Spawn)
    end		                    
    end
end
end

function respawn(NPC)
		spawn(NPC)
		end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 441.68, -20.33, -318.13, 2, 0)
	MovementLoopAddLocation(NPC, 447.68, -20.33, -324.06, 2, 0)
	MovementLoopAddLocation(NPC, 451.08, -20.35, -326.46, 2, 0)
	MovementLoopAddLocation(NPC, 455.34, -20.41, -326.81, 2, 0)
	MovementLoopAddLocation(NPC, 460.61, -20.5, -325.99, 2, 0)
	MovementLoopAddLocation(NPC, 464.6, -20.47, -323.73, 2, 0)
	MovementLoopAddLocation(NPC, 467.31, -20.42, -320.02, 2, 0)
	MovementLoopAddLocation(NPC, 467.77, -20.35, -315.62, 2, 0)
	MovementLoopAddLocation(NPC, 466.03, -20.23, -311.41, 2, 0)
	MovementLoopAddLocation(NPC, 461.14, -20.18, -307.03, 2, 0)
	MovementLoopAddLocation(NPC, 455.07, -20.2, -304.7, 2, 0)
	MovementLoopAddLocation(NPC, 449.84, -20.26, -304.03, 2, 0)
	MovementLoopAddLocation(NPC, 437.04, -20.75, -281.16, 2, 0)
	MovementLoopAddLocation(NPC, 437.55, -20.92, -254.01, 2, 0)
	MovementLoopAddLocation(NPC, 434.83, -21.31, -248.24, 2, 0)
	MovementLoopAddLocation(NPC, 405.9, -23.02, -216.31, 2, 0)
	MovementLoopAddLocation(NPC, 388.39, -18.86, -235.08, 2, 0)
	MovementLoopAddLocation(NPC, 405.93, -23, -217.04, 2, 0)
	MovementLoopAddLocation(NPC, 386.32, -24.34, -194.34, 2, 0)
	MovementLoopAddLocation(NPC, 359.28, -25.34, -174.69, 2, 0)
	MovementLoopAddLocation(NPC, 341.23, -23.91, -145.54, 2, 0)
	MovementLoopAddLocation(NPC, 319.08, -23.15, -103.21, 2, 0)
	MovementLoopAddLocation(NPC, 314.18, -22.67, -91.88, 2, 0)
	MovementLoopAddLocation(NPC, 306.92, -21.35, -54.89, 2, 0)
	MovementLoopAddLocation(NPC, 294.23, -21.05, -45.16, 2, 0)
	MovementLoopAddLocation(NPC, 279.54, -21.18, -32.57, 2, 0)
	MovementLoopAddLocation(NPC, 257.93, -21.1, -11.88, 2, 0)
	MovementLoopAddLocation(NPC, 254.82, -19.97, 35.53, 2, 0)
	MovementLoopAddLocation(NPC, 286.47, -12.82, 76.85, 2, 0)
	MovementLoopAddLocation(NPC, 291.57, -13.42, 109.62, 2, 0)
	MovementLoopAddLocation(NPC, 301.61, -15.94, 140.57, 2, 0)
	MovementLoopAddLocation(NPC, 311.09, -17.91, 158.73, 2, 0)
	MovementLoopAddLocation(NPC, 315.55, -17.98, 164.22, 2, 0)
	MovementLoopAddLocation(NPC, 321.17, -18.12, 167.53, 2, 0)
	MovementLoopAddLocation(NPC, 327.38, -18.49, 168.63, 2, 0)
	MovementLoopAddLocation(NPC, 335.41, -19.11, 168.24, 2, 0)
	MovementLoopAddLocation(NPC, 343.39, -19.81, 165.99, 2, 0)
	MovementLoopAddLocation(NPC, 353.19, -20.11, 161.76, 2, 0)
	MovementLoopAddLocation(NPC, 362.33, -20.07, 156.28, 2, 0)
	MovementLoopAddLocation(NPC, 371, -20.4, 150.07, 2, 0)
	MovementLoopAddLocation(NPC, 376.95, -20.63, 141.51, 2, 0)
	MovementLoopAddLocation(NPC, 380.82, -20.84, 135.48, 2, 0)
	MovementLoopAddLocation(NPC, 376.95, -20.63, 141.51, 2, 0)
	MovementLoopAddLocation(NPC, 371, -20.4, 150.07, 2, 0)
	MovementLoopAddLocation(NPC, 362.33, -20.07, 156.28, 2, 0)
	MovementLoopAddLocation(NPC, 353.19, -20.11, 161.76, 2, 0)
	MovementLoopAddLocation(NPC, 343.39, -19.81, 165.99, 2, 0)
	MovementLoopAddLocation(NPC, 335.41, -19.11, 168.24, 2, 0)
	MovementLoopAddLocation(NPC, 327.38, -18.49, 168.63, 2, 0)
	MovementLoopAddLocation(NPC, 321.17, -18.12, 167.53, 2, 0)
	MovementLoopAddLocation(NPC, 315.55, -17.98, 164.22, 2, 0)
	MovementLoopAddLocation(NPC, 311.09, -17.91, 158.73, 2, 0)
	MovementLoopAddLocation(NPC, 301.61, -15.94, 140.57, 2, 0)
	MovementLoopAddLocation(NPC, 291.57, -13.42, 109.62, 2, 0)
	MovementLoopAddLocation(NPC, 286.47, -12.82, 76.85, 2, 0)
	MovementLoopAddLocation(NPC, 254.82, -19.97, 35.53, 2, 0)
	MovementLoopAddLocation(NPC, 257.93, -21.1, -11.88, 2, 0)
	MovementLoopAddLocation(NPC, 279.54, -21.18, -32.57, 2, 0)
	MovementLoopAddLocation(NPC, 294.23, -21.05, -45.16, 2, 0)
	MovementLoopAddLocation(NPC, 306.92, -21.35, -54.89, 2, 0)
	MovementLoopAddLocation(NPC, 314.18, -22.67, -91.88, 2, 0)
	MovementLoopAddLocation(NPC, 319.08, -23.15, -103.21, 2, 0)
	MovementLoopAddLocation(NPC, 341.23, -23.91, -145.54, 2, 0)
	MovementLoopAddLocation(NPC, 359.28, -25.34, -174.69, 2, 0)
	MovementLoopAddLocation(NPC, 386.32, -24.34, -194.34, 2, 0)
	MovementLoopAddLocation(NPC, 405.93, -23, -217.04, 2, 0)
	MovementLoopAddLocation(NPC, 388.39, -18.86, -235.08, 2, 0)
	MovementLoopAddLocation(NPC, 405.9, -23.02, -216.31, 2, 0)
	MovementLoopAddLocation(NPC, 434.83, -21.31, -248.24, 2, 0)
	MovementLoopAddLocation(NPC, 437.55, -20.92, -254.01, 2, 0)
	MovementLoopAddLocation(NPC, 437.04, -20.75, -281.16, 2, 0)
	MovementLoopAddLocation(NPC, 449.84, -20.26, -304.03, 2, 0)
	MovementLoopAddLocation(NPC, 455.07, -20.2, -304.7, 2, 0)
	MovementLoopAddLocation(NPC, 461.14, -20.18, -307.03, 2, 0)
	MovementLoopAddLocation(NPC, 466.03, -20.23, -311.41, 2, 0)
	MovementLoopAddLocation(NPC, 467.77, -20.35, -315.62, 2, 0)
	MovementLoopAddLocation(NPC, 467.31, -20.42, -320.02, 2, 0)
	MovementLoopAddLocation(NPC, 464.6, -20.47, -323.73, 2, 0)
	MovementLoopAddLocation(NPC, 460.61, -20.5, -325.99, 2, 0)
	MovementLoopAddLocation(NPC, 455.34, -20.41, -326.81, 2, 0)
	MovementLoopAddLocation(NPC, 451.08, -20.35, -326.46, 2, 0)
	MovementLoopAddLocation(NPC, 447.68, -20.33, -324.06, 2, 0)
	MovementLoopAddLocation(NPC, 441.68, -20.33, -318.13, 2, 0)
end


