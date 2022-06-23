--[[
    Script Name    : SpawnScripts/Nettleville/LaurelVivan.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.22 01:06:41
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
waypoints(NPC)
SetPlayerProximityFunction(NPC, 4, "InRange", "LeaveRange")
end


function InRange(NPC, Spawn)
    if math.random(1,100)<33 then
Talk(NPC,Spawn)
end
end

function hailed(NPC, Spawn)
Talk(NPC,Spawn)
end

function Talk(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	            local choice = math.random(1,7)

	                    if choice == 1 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_216216bd.mp3", "The next time that guy leers at me, I'm gonna punch him in the throat.", "threaten", 3620511003, 1079805953, Spawn)
	                    elseif choice == 2 then
                 		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_aoi_gf_603e4394.mp3", "Was it just me, or did I hear something jingling in your coin purse?", "listen", 2402158317, 1527601082, Spawn)
                    	elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_d2844e25.mp3", "You can avoid trouble around here as long as you don't make eye contact with anyone.", "lookaway", 2224595311, 1879007102, Spawn)
                    	elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_ed2258.mp3", "If you keep bothering me, I'll scream for help!!", "scream", 3517182304, 1940512214, Spawn)
                    	elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_e1648d49.mp3", "What made you think I wanted to talk to you?", "shrug", 739774986, 813162418, Spawn)
                    	elseif choice == 6 then
                 		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_975b4774.mp3", "I wish those guards would just leave us alone.", "sulk", 453027671, 1457811660, Spawn, 0)
                 	    elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_b0f7eb94.mp3", "Unless you know of a way to make some quick coin, we have no reason to talk.", "scold", 3652661564, 2025834564, Spawn)
                        end
                    end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 629.99, -20.41, 286.08, 2, 2)
	MovementLoopAddLocation(NPC, 629.99, -20.41, 286.08, 2, 37,"Action")
	MovementLoopAddLocation(NPC, 629.99, -20.41, 286.08, 2, 37,"Action")
	MovementLoopAddLocation(NPC, 630.62, -20.39, 286.77, 2, 0)
	MovementLoopAddLocation(NPC, 630.1, -20.4, 283.87, 2, 0)
	MovementLoopAddLocation(NPC, 627.78, -20.38, 281.28, 2, 0)
	MovementLoopAddLocation(NPC, 624.56, -20.38, 281.53, 2, 0)
	MovementLoopAddLocation(NPC, 616.08, -20.32, 284.16, 2, 0)
	MovementLoopAddLocation(NPC, 607.81, -20.36, 287.05, 2, 0)
	MovementLoopAddLocation(NPC, 601.77, -20.31, 289.12, 2, 0)
	MovementLoopAddLocation(NPC, 601.77, -20.31, 289.12, 2, 1)
	MovementLoopAddLocation(NPC, 601.77, -20.31, 289.12, 2, 15,"Action")
	MovementLoopAddLocation(NPC, 600.68, -20.35, 289.94, 2, 0)
	MovementLoopAddLocation(NPC, 604.55, -20.34, 288.22, 2, 0)
	MovementLoopAddLocation(NPC, 620.13, -20.4, 282.82, 2, 0)
	MovementLoopAddLocation(NPC, 629.95, -20.39, 279.41, 2, 0)
	MovementLoopAddLocation(NPC, 642.03, -20.24, 274.87, 2, 1)
	MovementLoopAddLocation(NPC, 642.03, -20.24, 274.87, 2, 35,"Action")
	MovementLoopAddLocation(NPC, 642.03, -20.24, 274.87, 2, 35,"Action")
	MovementLoopAddLocation(NPC, 644.8, -20.31, 274.6, 2, 0)
	MovementLoopAddLocation(NPC, 633.45, -20.38, 278.19, 2, 0)
	MovementLoopAddLocation(NPC, 629.47, -20.33, 278.91, 2, 0)
end


function Action(NPC)
    local choice = MakeRandomInt(1, 4)
    if choice == 1 then
        PlayFlavor(NPC, "", "", "peer", 0, 0, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "", "", "listen", 0, 0, Spawn)
    elseif choice == 3 then
        PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    elseif choice == 4 then
        PlayFlavor(NPC, "", "", "tapfoot", 0, 0, Spawn)
    end
end   
    
