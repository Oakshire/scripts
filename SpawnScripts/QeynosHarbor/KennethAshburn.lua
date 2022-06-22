--[[
    Script Name    : SpawnScripts/QeynosHarbor/KennethAshburn.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.21 03:06:38
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
waypoints(NPC)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
end


function InRange(NPC, Spawn)
    if math.random(1,100)<33 then
Talk(NPC,Spawn)
end
end

function hailed(NPC, Spawn)
Talk(NPC,Spawn)
end

function Talk(NPC,Spawn)
 	FaceTarget(NPC, Spawn)
              	local choice = math.random(1,9)

                    	if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_e1633802.mp3", "I was just saying to myself how I really don't like the way your face looks.", "agree", 2892144271, 4226558009, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_dfce6d9.mp3", "If you're looking for trouble, I've got a whole fistful of it waiting for you.", "threaten", 767826754, 1534633302, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_daf01a19.mp3", "If I had another five or six ales, maybe I wouldn't mind talking to you.", "chuckle", 3530112272, 2115498011, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_c467886b.mp3", "Do I look like someone who cares?", "whome", 2648633348, 1343979863, Spawn)
                    	elseif choice == 5 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_f47447aa.mp3", "Keep to yourself and you just might make it through another day.", "wink", 1457279923, 475736143, Spawn)
                    	elseif choice == 6 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_aoi_gm_a2d138b9.mp3", "Where the heck is that horrible stench coming from?   Oh.  You.", "stinky", 3989425659, 2701948732, Spawn)
                    	elseif choice == 7 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_aoi_gm_20171f6b.mp3", "If you know what's good for ya, you didn't see anything!", "scold", 369052520, 3267063374, Spawn)
                    	elseif choice == 8 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_34b6867c.mp3", "Get out of my face, loser!", "stare", 1398343887, 3015762585, Spawn)
                    	elseif choice == 9 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_528fccc.mp3", "That look's like an awfuly expensive pair of boots there.. friend.", "ponder", 623577963, 2384305800, Spawn)
	                   	end
end	                   	
	                   	
function waypoints(NPC)
	MovementLoopAddLocation(NPC, 580.91, -20.28, 332.26, 2, 1)
	MovementLoopAddLocation(NPC, 580.91, -20.28, 332.26, 2, 38,"Action")
	MovementLoopAddLocation(NPC, 581.58, -20.25, 326.22, 2, 0)
	MovementLoopAddLocation(NPC, 582.26, -20.42, 320.2, 2, 0)
	MovementLoopAddLocation(NPC, 583.72, -20.35, 313.71, 2, 0)
	MovementLoopAddLocation(NPC, 587.53, -20.33, 309.33, 2, 0)
	MovementLoopAddLocation(NPC, 590.18, -20.37, 304.58, 2, 0)
	MovementLoopAddLocation(NPC, 595.78, -20.38, 299.68, 2, 1)
	MovementLoopAddLocation(NPC, 595.78, -20.38, 299.68, 2, 15,"Action")
	MovementLoopAddLocation(NPC, 594.05, -20.42, 299.19, 2, 0)
	MovementLoopAddLocation(NPC, 594.68, -20.42, 298.38, 2, 0)
	MovementLoopAddLocation(NPC, 598.8, -20.4, 293.12, 2, 0)
	MovementLoopAddLocation(NPC, 602.49, -20.3, 291.29, 2, 0)
	MovementLoopAddLocation(NPC, 605.34, -20.05, 284.69, 2, 1)
	MovementLoopAddLocation(NPC, 605.34, -20.05, 284.69, 2, 15,"Action")
	MovementLoopAddLocation(NPC, 610.15, -20.11, 283.97, 2, 0)
	MovementLoopAddLocation(NPC, 615.93, -20.08, 282.1, 2, 0)
	MovementLoopAddLocation(NPC, 620.93, -20.25, 279.7, 2, 1)
	MovementLoopAddLocation(NPC, 620.93, -20.25, 279.7, 2, 15,"Action")
	MovementLoopAddLocation(NPC, 621.34, -20.29, 279.85, 2, 0)
	MovementLoopAddLocation(NPC, 622.01, -20.32, 280.1, 2, 0)
	MovementLoopAddLocation(NPC, 613.94, -20.05, 282.24, 2, 0)
	MovementLoopAddLocation(NPC, 606.98, -19.99, 284.2, 2, 0)
	MovementLoopAddLocation(NPC, 603.44, -20.09, 286.02, 2, 0)
	MovementLoopAddLocation(NPC, 602.09, -20.09, 286.31, 2, 0)
	MovementLoopAddLocation(NPC, 600.67, -20.07, 286.24, 2, 1)
	MovementLoopAddLocation(NPC, 600.67, -20.07, 286.24, 2, 15,"Action")
	MovementLoopAddLocation(NPC, 599.92, -20.06, 287.85, 2, 0)
	MovementLoopAddLocation(NPC, 593.08, -20.42, 294.14, 2, 0)
	MovementLoopAddLocation(NPC, 588.56, -20.35, 299.95, 2, 0)
	MovementLoopAddLocation(NPC, 591.14, -20.34, 306.08, 2, 1)
	MovementLoopAddLocation(NPC, 591.14, -20.34, 306.08, 2, 15,"Action")
	MovementLoopAddLocation(NPC, 589.84, -20.38, 305.57, 2, 0)
	MovementLoopAddLocation(NPC, 588.12, -20.37, 306.98, 2, 0)
	MovementLoopAddLocation(NPC, 586.14, -20.29, 310.13, 2, 0)
	MovementLoopAddLocation(NPC, 584.08, -20.3, 314.18, 2, 0)
	MovementLoopAddLocation(NPC, 583.61, -20.33, 315.11, 2, 0)
	MovementLoopAddLocation(NPC, 584.19, -20.33, 321.74, 2, 1)
	MovementLoopAddLocation(NPC, 584.19, -20.33, 321.74, 2, 15,"Action")
	MovementLoopAddLocation(NPC, 580.72, -20.25, 330.44, 2, 0)
end

function Action(NPC)
    local choice = MakeRandomInt(1, 4)
    if choice == 1 then
        PlayFlavor(NPC, "", "", "peer", 0, 0, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "", "", "listen", 0, 0, Spawn)
    elseif choice == 3 then
        PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
    elseif choice == 4 then
        PlayFlavor(NPC, "", "", "doubletake", 0, 0, Spawn)
    end
end   
    
function respawn(NPC)
	spawn(NPC)
end