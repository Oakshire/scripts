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
	MovementLoopAddLocation(NPC, 573.02, -20.16, 328.83, 2, 1)
	MovementLoopAddLocation(NPC, 573.02, -20.16, 328.83, 2, 35,"Action")
	MovementLoopAddLocation(NPC, 573.09, -20.2, 330.62, 2, 0)
	MovementLoopAddLocation(NPC, 575.17, -20.27, 325.06, 2, 0)
	MovementLoopAddLocation(NPC, 577.74, -20.2, 318.24, 2, 0)
	MovementLoopAddLocation(NPC, 579.66, -20.05, 313.17, 2, 0)
	MovementLoopAddLocation(NPC, 581.81, -19.9, 309.2, 2, 0)
	MovementLoopAddLocation(NPC, 586.5, -20.3, 302.78, 2, 1)
	MovementLoopAddLocation(NPC, 586.5, -20.3, 302.78, 2, 18,"Action")
	MovementLoopAddLocation(NPC, 596.6, -20.37, 291.81, 2, 0)
	MovementLoopAddLocation(NPC, 599.14, -20.18, 289.06, 2, 0)
	MovementLoopAddLocation(NPC, 605.01, -20.12, 285.85, 2, 0)
	MovementLoopAddLocation(NPC, 614.96, -20.03, 281.82, 2, 0)
	MovementLoopAddLocation(NPC, 624.55, -20.36, 280.32, 2, 0)
	MovementLoopAddLocation(NPC, 633.35, -20.27, 276.78, 2, 1)
	MovementLoopAddLocation(NPC, 633.35, -20.27, 276.78, 2, 35,"Action")
	MovementLoopAddLocation(NPC, 634.73, -20.31, 276.25, 2, 0)
	MovementLoopAddLocation(NPC, 630.75, -20.28, 277.94, 2, 0)
	MovementLoopAddLocation(NPC, 624.96, -20.37, 280.39, 2, 0)
	MovementLoopAddLocation(NPC, 620.85, -20.27, 280.41, 2, 0)
	MovementLoopAddLocation(NPC, 614.36, -20.03, 281.9, 2, 0)
	MovementLoopAddLocation(NPC, 607.92, -19.96, 283.72, 2, 0)
	MovementLoopAddLocation(NPC, 606.47, -20.03, 284.66, 2, 1)
	MovementLoopAddLocation(NPC, 606.47, -20.03, 284.66, 2, 18,"Action")
	MovementLoopAddLocation(NPC, 594.11, -20.42, 294.36, 2, 0)
	MovementLoopAddLocation(NPC, 587.61, -20.39, 301.92, 2, 0)
	MovementLoopAddLocation(NPC, 583.45, -19.97, 306.34, 2, 0)
	MovementLoopAddLocation(NPC, 578.45, -20.23, 317.51, 2, 1)
	MovementLoopAddLocation(NPC, 578.45, -20.23, 317.51, 2, 18,"Action")
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
        PlayFlavor(NPC, "", "", "tapfoot", 0, 0, Spawn)
    end
end   
    
function respawn(NPC)
	spawn(NPC)
end