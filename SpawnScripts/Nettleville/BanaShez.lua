--[[
    Script Name    : SpawnScripts/Nettleville/BanaShez.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.22 01:06:16
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

function Talk(NPC, Spawn)
	FaceTarget(NPC, Spawn)
			    local choice = math.random(1,6)
	            
                    	if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_164ffd98.mp3", "I can purr my way out of anything.", "wink", 4263608089, 504552247, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_8a065b90.mp3", "I am a kindly master just so long you remember your place.", "blush", 2082721768, 1564608519, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_5beacd8e.mp3", "Deep down we're all driven by urges.  I just have the courage to live by them!", "agree", 1853094076, 969912178, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_3fe55b38.mp3", "Why, don't I seem to be the popular one today?", "ponder", 946610860, 3180537294, Spawn)
                    	elseif choice == 5 then
                       	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_895b5e07.mp3", "Everything has a price.  What's yours?", "nod", 1824945885, 3397633823, Spawn)
                     	elseif choice == 6 then
                      	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_996fcd0c.mp3", "I wouldn't be caught dead wearing something like that!", "no", 1201795983, 50062692, Spawn)
                    	end
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 585.73, -20.37, 317.45, 2, 1)
	MovementLoopAddLocation(NPC, 585.73, -20.37, 317.45, 2, 35,"Action")
	MovementLoopAddLocation(NPC, 585.73, -20.37, 317.45, 2, 35,"Action")
	MovementLoopAddLocation(NPC, 584.45, -20.41, 318.08, 2, 0)
	MovementLoopAddLocation(NPC, 583.27, -20.38, 316.59, 2, 0)
	MovementLoopAddLocation(NPC, 583.91, -20.31, 313.96, 2, 0)
	MovementLoopAddLocation(NPC, 586.34, -20.29, 310.43, 2, 0)
	MovementLoopAddLocation(NPC, 589.79, -20.38, 305.61, 2, 18,"Action")
	MovementLoopAddLocation(NPC, 595.86, -20.42, 297.43, 2, 0)
	MovementLoopAddLocation(NPC, 603.38, -20.33, 291.06, 2, 0)
	MovementLoopAddLocation(NPC, 612.22, -20.28, 288.8, 2, 1)
	MovementLoopAddLocation(NPC, 612.22, -20.28, 288.8, 2, 18,"Action")
	MovementLoopAddLocation(NPC, 619.35, -20.34, 284.92, 2, 1)
	MovementLoopAddLocation(NPC, 619.35, -20.34, 284.92, 2, 45,"Action")
	MovementLoopAddLocation(NPC, 606.72, -20.42, 289.69, 2, 0)
	MovementLoopAddLocation(NPC, 602.78, -20.3, 291.44, 2, 0)
	MovementLoopAddLocation(NPC, 599.03, -20.38, 294.61, 2, 1)
	MovementLoopAddLocation(NPC, 599.03, -20.38, 294.61, 2, 18,"Action")
	MovementLoopAddLocation(NPC, 590.13, -20.35, 305.84, 2, 1)
	MovementLoopAddLocation(NPC, 590.13, -20.35, 305.84, 2, 18,"Action")
	MovementLoopAddLocation(NPC, 583.97, -20.35, 312.16, 2, 0)
	MovementLoopAddLocation(NPC, 583.26, -20.33, 314.87, 2, 0)
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