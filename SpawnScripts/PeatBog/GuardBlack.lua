--[[
	Script Name	: SpawnScripts/PeatBog/GuardBlack.lua
	Script Purpose	: Guard Black <Guard>
	Script Author	: Scatman
	Script Date	: 2009.05.15
	Script Notes	: 
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 744.55, -32.81, 402.73, 2, 0)
	MovementLoopAddLocation(NPC, 746.47, -33.1, 407.78, 2, 0)
	MovementLoopAddLocation(NPC, 746.31, -33.21, 412.6, 2, 0)
	MovementLoopAddLocation(NPC, 744.68, -33.18, 417.61, 2, 0)
	MovementLoopAddLocation(NPC, 741.26, -33.18, 421.35, 2, 0)
	MovementLoopAddLocation(NPC, 736.26, -33.2, 423.3, 2, 0)
	MovementLoopAddLocation(NPC, 731.15, -33.26, 424.82, 2, 0)
	MovementLoopAddLocation(NPC, 704.95, -33.19, 428.48, 2, 0)
	MovementLoopAddLocation(NPC, 699.76, -33.36, 427.99, 2, 0)
	MovementLoopAddLocation(NPC, 694.18, -33.37, 426.54, 2, 0)
	MovementLoopAddLocation(NPC, 688.9, -33.37, 425.63, 2, 0)
	MovementLoopAddLocation(NPC, 683.86, -33.36, 425.03, 2, 0)
	MovementLoopAddLocation(NPC, 673.27, -33.36, 424.2, 2, 0)
	MovementLoopAddLocation(NPC, 657.7, -33.33, 419.79, 2, 0)
	MovementLoopAddLocation(NPC, 652.52, -33.38, 419.24, 2, 0)
	MovementLoopAddLocation(NPC, 646.98, -33.35, 419.4, 2, 0)
	MovementLoopAddLocation(NPC, 641.92, -33.35, 420.54, 2, 0)
	MovementLoopAddLocation(NPC, 637.19, -33.12, 423.45, 2, 0)
	MovementLoopAddLocation(NPC, 633.65, -32.79, 427.09, 2, 0)
	MovementLoopAddLocation(NPC, 630.93, -33.09, 430.89, 2, 0)
	MovementLoopAddLocation(NPC, 624.97, -33.22, 439.37, 2, 0)
	MovementLoopAddLocation(NPC, 621.71, -33.21, 442.77, 2, 0)
	MovementLoopAddLocation(NPC, 617.66, -33.22, 444.66, 2, 0)
	MovementLoopAddLocation(NPC, 612.81, -33.23, 446.07, 2, 0)
	MovementLoopAddLocation(NPC, 608.08, -33.11, 446.5, 2, 0)
	MovementLoopAddLocation(NPC, 602.84, -33.11, 446.53, 2, 0)
	MovementLoopAddLocation(NPC, 598.36, -33.1, 445.95, 2, 0)
	MovementLoopAddLocation(NPC, 592.84, -33.08, 444.43, 2, 0)
	MovementLoopAddLocation(NPC, 584.58, -32.44, 441.8, 2, 0)
	MovementLoopAddLocation(NPC, 571.31, -32.77, 434.96, 2, 0)
	MovementLoopAddLocation(NPC, 568.07, -33.1, 430.09, 2, 0)
	MovementLoopAddLocation(NPC, 572.64, -32.59, 437.5, 2, 0)
	MovementLoopAddLocation(NPC, 593.19, -33.08, 444.52, 2, 0)
	MovementLoopAddLocation(NPC, 597.92, -33.08, 445.7, 2, 0)
	MovementLoopAddLocation(NPC, 603.18, -33.11, 446.45, 2, 0)
	MovementLoopAddLocation(NPC, 607.15, -33.11, 446.51, 2, 0)
	MovementLoopAddLocation(NPC, 611.84, -33.2, 446.23, 2, 0)
	MovementLoopAddLocation(NPC, 621.39, -33.23, 442.97, 2, 0)
	MovementLoopAddLocation(NPC, 633.66, -32.79, 427.05, 2, 0)
	MovementLoopAddLocation(NPC, 636.8, -33.07, 423.78, 2, 0)
	MovementLoopAddLocation(NPC, 641.59, -33.36, 420.75, 2, 0)
	MovementLoopAddLocation(NPC, 646.35, -33.36, 419.33, 2, 0)
	MovementLoopAddLocation(NPC, 657.45, -33.36, 419.75, 2, 0)
	MovementLoopAddLocation(NPC, 663.21, -33.29, 421.21, 2, 0)
	MovementLoopAddLocation(NPC, 667.58, -33.34, 422.64, 2, 0)
	MovementLoopAddLocation(NPC, 673.05, -33.37, 424.19, 2, 0)
	MovementLoopAddLocation(NPC, 694.13, -33.35, 426.27, 2, 0)
	MovementLoopAddLocation(NPC, 699.34, -33.38, 427.62, 2, 0)
	MovementLoopAddLocation(NPC, 704.85, -33.18, 428.59, 2, 0)
	MovementLoopAddLocation(NPC, 731.38, -33.25, 424.62, 2, 0)
	MovementLoopAddLocation(NPC, 740.85, -33.19, 421.32, 2, 0)
	MovementLoopAddLocation(NPC, 744.27, -33.18, 418.04, 2, 0)
	MovementLoopAddLocation(NPC, 746.14, -33.22, 412.85, 2, 0)
	MovementLoopAddLocation(NPC, 746.48, -33.11, 408, 2, 0)
	MovementLoopAddLocation(NPC, 744.85, -32.81, 402.81, 2, 0)
	MovementLoopAddLocation(NPC, 734.76, -32.19, 389.66, 2, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function aggro(NPC,Spawn)
if math.random(1,100) <70 then
 	local choice = MakeRandomInt(1,3)
       math.randomseed(os.time())
 	if choice == 1 then
       PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_583690dc.mp3", "Summon help!  We have invaders!", "", 3340212225, 279643307)
  	elseif choice == 2 then
       PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a203c9ec.mp3", "Prepare to face your doom, meddler!", "", 31496819882, 365167432)
 	elseif choice == 3 then
       PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a30c4f9d.mp3", "To arms!", "", 1238020980, 748146443)

   end
end
end

function death(NPC, Spawn)
        math.randomseed(os.time())
		PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_death_gm_7612214f.mp3", "All hands retreat!", "", 3033325782, 1103449586)
end

function halfhealth(NPC,Spawn)
 if math.random(1,100) <60 then
 	local choice = MakeRandomInt(1,3)
       math.randomseed(os.time())
 	if choice == 1 then
       PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_halfhealth_gm_1babf022.mp3", "Is that all you have?", "", 170267964, 1158805306)
  	elseif choice == 2 then
       PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_halfhealth_gm_8529e507.mp3", "I can't hold'm forever!", "", 644448824, 755050547)
 	elseif choice == 3 then
       PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_battle_gm_3b9f3e78.mp3", "[OPTION 3 HALFHEALTH TXT]", "", 3446258592, 1927510326)

   end
end
end   

function victory(NPC,Spawn)
 if math.random(1,100) <60 then
	local choice = MakeRandomInt(1,3)
        math.randomseed(os.time())

	if choice == 1 then
		    PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_4553e1e0.mp3", "Flee now or meet this one's fate.", "", 3032162747, 1359206304)
 	elseif choice == 2 then
	    	PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_153f12ff.mp3", "One down!", "", 3009518664, 4140389760)
 	elseif choice == 3 then
 	    	PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_ec0cd85a.mp3", "I hope they're all this easy!", "", 2687289628, 2303639320)
   end
end
end