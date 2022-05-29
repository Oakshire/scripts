--[[
    Script Name    : SpawnScripts/PeatBog/aBloodsaberplaguebearer.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.26 04:05:22
    Script Purpose : Running from sewer to location and despawning.
                   : 
--]]

function spawn(NPC)
waypoints(NPC)
SpawnCheck(NPC, Spawn)
Appearance(NPC,Spawn)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
    
    if GetSpawnLocationID(NPC) == 133773314 then
    MovementLoopAddLocation(NPC, 669.08, -34.1, 410.02, 4, 0)
	MovementLoopAddLocation(NPC, 679.26, -33.36, 424.96, 4, 0)
	MovementLoopAddLocation(NPC, 686.9, -32.43, 458.65, 4, 0)
	MovementLoopAddLocation(NPC, 703.01, -33.46, 485.47, 4, 0)
	MovementLoopAddLocation(NPC, 692.71, -32.6, 496.42, 4, 0)
	MovementLoopAddLocation(NPC, 690.75, -32.44, 496.36, 4, 1)
	MovementLoopAddLocation(NPC, 690.75, -32.44, 496.36, 4, 30,"Action")
	MovementLoopAddLocation(NPC, 690.75, -32.44, 496.36, 4, 1)
	
	elseif GetSpawnLocationID(NPC) == 133773315 then
	    	MovementLoopAddLocation(NPC, 668.86, -34.13, 409.6, 4, 0)
	MovementLoopAddLocation(NPC, 679.24, -33.37, 424.54, 4, 0)
	MovementLoopAddLocation(NPC, 683.93, -33.29, 451.02, 4, 0)
	MovementLoopAddLocation(NPC, 699.36, -32.7, 454.26, 4, 0)
	MovementLoopAddLocation(NPC, 709.55, -33.35, 462.09, 4, 0)
	MovementLoopAddLocation(NPC, 718.29, -33.64, 460.4, 4, 1)
	MovementLoopAddLocation(NPC, 718.29, -33.64, 460.4, 4, 30,"Action")
	MovementLoopAddLocation(NPC, 718.29, -33.64, 460.4, 4, 1)

	elseif GetSpawnLocationID(NPC) == 133773316 then
	MovementLoopAddLocation(NPC, 666.72, -33.63, 403.08, 4, 0)
	MovementLoopAddLocation(NPC, 645.01, -33.36, 419.49, 4, 0)
	MovementLoopAddLocation(NPC, 637.37, -33.14, 423.14, 4, 0)
	MovementLoopAddLocation(NPC, 633.45, -32.81, 427.24, 4, 0)
	MovementLoopAddLocation(NPC, 628.36, -33.28, 435.28, 4, 0)
	MovementLoopAddLocation(NPC, 627.06, -33.11, 443.75, 4, 0)
	MovementLoopAddLocation(NPC, 633.24, -33.41, 457.71, 4, 0)
	MovementLoopAddLocation(NPC, 632.07, -33.16, 459.32, 4, 0)
	MovementLoopAddLocation(NPC, 624.71, -33.10, 458.06, 4, 1)
	MovementLoopAddLocation(NPC, 624.71, -33.10, 458.06, 4, 30,"Action")
	MovementLoopAddLocation(NPC, 624.71, -33.10, 458.06, 4, 1)
    end
end

function Action(NPC,Spawn)
    PlayFlavor(NPC,"","","itch",0,0)
    AddTimer(NPC,6500,"Action2",1)
    end

function Action2(NPC,Spawn)
    PlayFlavor(NPC,"","","result_acid_rain_damage",0,0)
    AddTimer(NPC,2300,"Action3",1)
    end	    
    
function Action3(NPC,Spawn)
    PlayFlavor(NPC,"","","result_poison_cloud_aoe",0,0)
    SpawnSet(NPC,"visual_state",0)
    AddTimer(NPC,2300,"Action4")
    AddTimer(NPC,2200,"despawn",1,Spawn)
    end	     
    
function Action4(NPC)
    Despawn(NPC)
end
    
function SpawnCheck(NPC, Spawn)
    if GetSpawnLocationID(NPC) == 133773314 then
    AddTimer(NPC,60000,"spawn2")
    AddTimer(NPC,120000,"spawn3")
    end
end

function spawn2(NPC,Spawn)
 zone = GetZone(NPC)
    SpawnByLocationID(zone,133773315)
end

function spawn3(NPC,Spawn)
    zone = GetZone(NPC)
    SpawnByLocationID(zone,133773316)
end

function Appearance(NPC,Spawn)
    local choice = math.random (1,2)
        if choice == 1 then
        SpawnSet(NPC,"gender",2)
        SpawnSet(NPC,"model_type",105)
        else
        end
    end
    
 function aggro(NPC,Spawn)   
        if GetGender(NPC)==1 then
 	local choice = MakeRandomInt(1,2)
 	    if choice == 1 then
      PlayFlavor(NPC,"voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_battle_gm_ee1e1a8.mp3","Attack!","",3180104139, 2926558993)
        else
      PlayFlavor(NPC,"voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_battle_cm_bbd7a8ed.mp3","Too many shiney things!  Can't concentrate!","",445162395, 3277644756)
      end  
    else
    PlayFlavor(NPC,"voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_aggro_gf_b7e0b3a.mp3","Me's gonna eat kidney first!","",750980753, 3740010516)
    end
end    

function healthchanged(NPC, Spawn)
    if GetHP(NPC) < GetMaxHP(NPC) * 0.55 then
     if GetHP(NPC) > GetMaxHP(NPC) * 0.45 then
   if GetGender(NPC)==1 then
	local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_halfhealth_gm_f462f6ff.mp3", "Is this supposed to hurt?", "", 4202180867, 1393988988, Spawn, 0)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_halfhealth_gm_aa145f4d.mp3", "Neat, that'll leave a pretty scar", "", 675684950, 4088135432, Spawn, 0)
        end
    else
	local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_halfhealth_gf_aa145f4d.mp3", "Neat, that'll leave a pretty scar", "", 70455099, 2953679351, Spawn, 0)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_halfhealth_gf_f462f6ff.mp3", "Is this supposed to hurt?", "", 216769747, 692696120, Spawn, 0)
        end
    end
    end
end
end    

function death(NPC,Spawn)
    if GetGender(NPC)==1 then
	local choice = MakeRandomInt(1,2)

	    if choice == 1 then
	    PlayFlavor(NPC,"voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_death_gm_e1755f3f.mp3","Come at me coward.  I'm not dead yet!...","result_poison_cloud_aoe",86111608, 3954832486)
        elseif choice == 2 then
    	PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_death_gm_e8c02d1e.mp3", "Feel kinda sleepy. Whacha do to me?", "result_poison_cloud_aoe", 3298938103, 1410551282, Spawn, 0)
        end
    else
    PlayFlavor(NPC,"voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_death_gf_e8c02d1e.mp3","Feel kinda sleepy.  What'chyou do ta me?!","result_poison_cloud_aoe",3447489483, 4136415601)
    end
end