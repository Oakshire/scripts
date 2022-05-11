--[[
	Script Name	: SpawnScripts/ElddarGrove/SeniorInitiateDelvin.lua
	Script Purpose	: Senior Initiate Delvin 
	Script Author	: Dorbin
	Script Date	: 2022.05.09
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
    SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function InRange(NPC,Spawn)
if GetFactionAmount(Spawn,11) <0 then
                  	local choice = math.random(1,6)
	                    if choice == 1 then
 	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_1a98f879.mp3", "How did you get past the city gates?!", "doubletake", 2984037816, 3824691347)
                       	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 1112175527, 3181748573)
                     	elseif choice == 3 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_48350e59.mp3", "You're not allowed in here!", "point", 1734668326, 429140096)
                     	elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 742840308, 1978260864)
                     	elseif choice == 5 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_5afcbd03.mp3", "The streets aren't safe with your kind upon them.", "no", 3192824592, 3089779490)
                     	elseif choice == 6 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_7e3f7ca.mp3", "I refuse to contaminate myself by conversing with you.", "sulk", 2165609155, 3535416550)
               	        end				    
			    end	   
        end
    
    
function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
    InRange(NPC,Spawn)
    else
	    FaceTarget(NPC, Spawn)
        GenericRaceCheckHail(NPC, Spawn, faction)			
        RandomGreeting(NPC, Spawn)
    end 
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", 0, 0, Spawn)
	end
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 783.26, -19.63, -362.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 758.18, -19.63, -363.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 757.65, -19.64, -375.84, 2, 0)
	MovementLoopAddLocation(NPC, 744.46, -18.86, -376.24, 2, 0)
	MovementLoopAddLocation(NPC, 743.15, -18.87, -376.27, 2, 1)
    MovementLoopAddLocation(NPC, 743.15, -18.87, -376.27, 2, math.random(6,8),"EcologyEmotes")
	MovementLoopAddLocation(NPC, 734.59, -19.54, -376.26, 2, 1)
	MovementLoopAddLocation(NPC, 734.59, -19.54, -376.26, 2, math.random(6,8),"EcologyEmotes")
	MovementLoopAddLocation(NPC, 734.59, -19.54, -376.26, 2, 1)
	MovementLoopAddLocation(NPC, 751.71, -18.86, -376.49, 2, 0)
	MovementLoopAddLocation(NPC, 757.26, -19.64, -376.43, 2, 0)
	MovementLoopAddLocation(NPC, 757.85, -19.63, -365.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 783.04, -19.63, -364.71, 2, 0)
	MovementLoopAddLocation(NPC, 782.83, -19.63, -393.74, 2, 0)
	MovementLoopAddLocation(NPC, 757.42, -19.64, -392.88, 2, 0)
	MovementLoopAddLocation(NPC, 757.59, -19.65, -380.17, 2, 1)
	MovementLoopAddLocation(NPC, 757.59, -19.65, -380.17, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 757.59, -19.65, -380.17, 2, 1)
	MovementLoopAddLocation(NPC, 760.07, -19.26, -379.85, 2, 0)
	MovementLoopAddLocation(NPC, 767.19, -19.26, -379.31, 2, 0)
	MovementLoopAddLocation(NPC, 770.62, -19.26, -378.68, 2, 0)
	MovementLoopAddLocation(NPC, 773.85, -19.26, -378.44, 2, 0)
	MovementLoopAddLocation(NPC, 774.11, -19.26, -372.12, 2, 1)
	MovementLoopAddLocation(NPC, 774.11, -19.26, -372.12, 2, math.random(6,10),"EcologyEmotes")
	MovementLoopAddLocation(NPC, 777.24, -19.26, -371.24, 2, 1)
	MovementLoopAddLocation(NPC, 777.24, -19.26, -371.24, 2, math.random(6,10),"EcologyEmotes")
	MovementLoopAddLocation(NPC, 776.04, -19.26, -371.19, 2, 1)
	MovementLoopAddLocation(NPC, 776.04, -19.26, -371.19, 2, math.random(6,10),"EcologyEmotes")
	MovementLoopAddLocation(NPC, 776.04, -19.26, -371.19, 2, 1)
	MovementLoopAddLocation(NPC, 772.36, -19.26, -378.49, 2, 0)
	MovementLoopAddLocation(NPC, 764.45, -19.26, -378.64, 2, 1)
	MovementLoopAddLocation(NPC, 764.45, -19.26, -378.64, 2, 3,"Door")
	MovementLoopAddLocation(NPC, 762.89, -18.99, -378.67, 2, 0)
	MovementLoopAddLocation(NPC, 757.91, -19.64, -378.77, 2, 0)
	MovementLoopAddLocation(NPC, 758.32, -19.63, -393.75, 2, 0)
	MovementLoopAddLocation(NPC, 782.62, -19.63, -393.73, 2, 1)
	MovementLoopAddLocation(NPC, 782.62, -19.63, -393.73, 2, math.random(5,8),"EcologyEmotes")
end

function Door(NPC,Spawn)
   local widget = GetSpawn(NPC, 2070109) 
 --   if GetSpawnByLocationID(Zone ,440091)~=nil then
        UseWidget(widget)
--    end
end

