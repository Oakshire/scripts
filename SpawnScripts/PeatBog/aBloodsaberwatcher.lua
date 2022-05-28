--[[
    Script Name    : SpawnScripts/PeatBog/aBloodsaberwatcher.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.27 05:05:41
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
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
    
function death(NPC,Spawn)
    if GetGender(NPC)==1 then
	local choice = MakeRandomInt(1,2)

	    if choice == 1 then
	    PlayFlavor(NPC,"voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_death_gm_e1755f3f.mp3","Come at me coward.  I'm not dead yet!...","",86111608, 3954832486)
        elseif choice == 2 then
    	PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_death_gm_e8c02d1e.mp3", "Feel kinda sleepy. Whacha do to me?", "", 3298938103, 1410551282, Spawn, 0)
        end
    else
    PlayFlavor(NPC,"voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_death_gf_e8c02d1e.mp3","Feel kinda sleepy.  What'chyou do ta me?!","",3447489483, 4136415601)
    end
end