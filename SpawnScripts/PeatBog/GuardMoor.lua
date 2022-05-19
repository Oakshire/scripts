--[[
	Script Name	: SpawnScripts/PeatBog/GuardMoor.lua
	Script Purpose	: Guard Moor <Guard>
	Script Author	: Scatman
	Script Date	: 2009.05.15
	Script Notes	: 
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 584.25, -32.33, 441.91, 2, 0)
	MovementLoopAddLocation(NPC, 598.15, -33.1, 445.74, 2, 0)
	MovementLoopAddLocation(NPC, 607.76, -33.11, 446.59, 2, 0)
	MovementLoopAddLocation(NPC, 612.02, -33.2, 445.92, 2, 0)
	MovementLoopAddLocation(NPC, 617.22, -33.22, 444.66, 2, 0)
	MovementLoopAddLocation(NPC, 621.62, -33.22, 442.55, 2, 0)
	MovementLoopAddLocation(NPC, 627.85, -33.27, 435.54, 2, 0)
	MovementLoopAddLocation(NPC, 636.71, -33.06, 423.79, 2, 0)
	MovementLoopAddLocation(NPC, 641.7, -33.35, 420.61, 2, 0)
	MovementLoopAddLocation(NPC, 646.74, -33.35, 419.53, 2, 0)
	MovementLoopAddLocation(NPC, 652.65, -33.38, 419.18, 2, 0)
	MovementLoopAddLocation(NPC, 657.5, -33.35, 419.74, 2, 0)
	MovementLoopAddLocation(NPC, 672.32, -33.37, 423.81, 2, 0)
	MovementLoopAddLocation(NPC, 689.76, -33.36, 425.47, 2, 0)
	MovementLoopAddLocation(NPC, 699.01, -33.37, 427.68, 2, 0)
	MovementLoopAddLocation(NPC, 704.67, -33.19, 428.52, 2, 0)
	MovementLoopAddLocation(NPC, 731.1, -33.27, 424.74, 2, 0)
	MovementLoopAddLocation(NPC, 736.09, -33.24, 423.34, 2, 0)
	MovementLoopAddLocation(NPC, 740.37, -33.19, 421.48, 2, 0)
	MovementLoopAddLocation(NPC, 744.27, -33.18, 418.17, 2, 0)
	MovementLoopAddLocation(NPC, 746.42, -33.22, 412.98, 2, 0)
	MovementLoopAddLocation(NPC, 746.44, -33.13, 408.27, 2, 0)
	MovementLoopAddLocation(NPC, 745.29, -32.91, 403.56, 2, 0)
	MovementLoopAddLocation(NPC, 742.62, -32.6, 399.85, 2, 0)
	MovementLoopAddLocation(NPC, 735.4, -32.26, 389.95, 2, 0)
	MovementLoopAddLocation(NPC, 745.03, -32.83, 403.05, 2, 0)
	MovementLoopAddLocation(NPC, 746.26, -33.1, 407.56, 2, 0)
	MovementLoopAddLocation(NPC, 746.27, -33.22, 412.85, 2, 0)
	MovementLoopAddLocation(NPC, 744.74, -33.2, 417.52, 2, 0)
	MovementLoopAddLocation(NPC, 741.14, -33.18, 420.85, 2, 0)
	MovementLoopAddLocation(NPC, 736.75, -33.19, 423.34, 2, 0)
	MovementLoopAddLocation(NPC, 731.96, -33.25, 424.64, 2, 0)
	MovementLoopAddLocation(NPC, 705.05, -33.18, 428.57, 2, 0)
	MovementLoopAddLocation(NPC, 699.7, -33.35, 427.85, 2, 0)
	MovementLoopAddLocation(NPC, 689.17, -33.36, 425.51, 2, 0)
	MovementLoopAddLocation(NPC, 673.34, -33.36, 424.36, 2, 0)
	MovementLoopAddLocation(NPC, 657.78, -33.32, 419.86, 2, 0)
	MovementLoopAddLocation(NPC, 652.59, -33.37, 419.05, 2, 0)
	MovementLoopAddLocation(NPC, 647.36, -33.36, 419.62, 2, 0)
	MovementLoopAddLocation(NPC, 642.06, -33.35, 420.83, 2, 0)
	MovementLoopAddLocation(NPC, 637.23, -33.12, 423.53, 2, 0)
	MovementLoopAddLocation(NPC, 633.44, -32.81, 427.2, 2, 0)
	MovementLoopAddLocation(NPC, 625.27, -33.22, 439.43, 2, 0)
	MovementLoopAddLocation(NPC, 621.78, -33.21, 442.6, 2, 0)
	MovementLoopAddLocation(NPC, 617.1, -33.25, 444.71, 2, 0)
	MovementLoopAddLocation(NPC, 612.48, -33.21, 446.16, 2, 0)
	MovementLoopAddLocation(NPC, 607.66, -33.11, 446.52, 2, 0)
	MovementLoopAddLocation(NPC, 603.23, -33.11, 446.57, 2, 0)
	MovementLoopAddLocation(NPC, 598.56, -33.11, 446.12, 2, 0)
	MovementLoopAddLocation(NPC, 583.64, -32.33, 441.48, 2, 0)
	MovementLoopAddLocation(NPC, 567.05, -32.83, 432.89, 2, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function aggro(NPC,Spawn)
        math.randomseed(os.time())
        PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_583690dc.mp3", "Summon help!  We have invaders!", "", 3340212225, 279643307)
end

function death(NPC, Spawn)
        math.randomseed(os.time())
		PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_death_gm_7612214f.mp3", "All hands retreat!", "", 3033325782, 1103449586)
end

function victory(NPC,Spawn)
	local choice = MakeRandomInt(1,2)
        math.randomseed(os.time())

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_4553e1e0.mp3", "Flee now or meet this one's fate.", "", 3032162747, 1359206304)
 	elseif choice == 2 then
	    	PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_153f12ff.mp3", "One down!", "", 3009518664, 4140389760)
    end
end