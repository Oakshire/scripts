--[[
    Script Name    : SpawnScripts/Generic/GenericCombatVoiceOvers.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.19 08:06:25
    Script Purpose : Generic Combat VoiceOvers for all races. Should include Death, Wounded and Aggro VoiceOvers. !!WIP!!
    Script Notes   :  SCRIPT MUST BE EDITED AND UPDATED WITH NEW COLLECTED VOICEOVERS, !!WIP!!
--]]



function generic_aggro(NPC, Spawn)
if GetRace(NPC) == 1  then  -- DARK ELF
    if GetGender(NPC) == 1  then -- MALE
    local choice = MakeRandomInt(1, 6)
    if choice == 1 then    
    PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_aggro_gm_beacbb30.mp3", "I hope you put your affairs in order.", "",  799093996, 16617637, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_3_aggro_gm_fe18133.mp3", "Look what strolled into the spider's web!", "", 1688336194, 2269151294, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_3_aggro_gm_10fd87eb.mp3", "There is no escape for you now!", "", 3427660043, 2534456197, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_2_aggro_gm_10fd87eb.mp3", "There is no escape for you now!", "", 3165522765, 2769419089, Spawn)
    elseif choice == 5 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_2_aggro_gm_fe18133.mp3", "Look what strolled into the spider's web!", "", 2482807895, 4283710764, Spawn)
    elseif choice == 6 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_2_aggro_gm_beacbb30.mp3", "I hope you put your affairs in order.", "", 1390644887, 2605603182, Spawn)
    end
    elseif GetGender(NPC) == 2 then -- FEMALE
    local choice = MakeRandomInt(1, 7)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_1_aggro_gf_beacbb30.mp3", "I hope you put your affairs in order.", "", 4241642069, 3957487704, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_2_aggro_gf_10fd87eb.mp3", "There is no escape for you now!", "", 3743520097, 2328340147, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_aggro_gf_8e7390a8.mp3", "Welcome to torment and destruction!", "", 3770648926, 2897017212, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_aggro_gf_fb890c79.mp3", "I have no time for meddlers.  Destroy them!", "", 1947039155, 2094447273, Spawn)
    elseif choice == 5 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_aggro_gf_ded507db.mp3", "More intruders to deal with?  Stop them!", "", 338410258, 2808797910, Spawn)
    elseif choice == 6 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_3_aggro_gf_fe18133.mp3", "Look what strolled into the spider's web!", "", 2332756549, 3562953667, Spawn)
    elseif choice == 7 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_3_aggro_gf_10fd87eb.mp3", "There is no escape for you now!", "", 3057301144, 689207639, Spawn)
    elseif choice == 8 then
    PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_aggro_gf_73e0b841.mp3", "Didn't expect to run into me, did you?", "", 1296281253, 1199123109, Spawn)
    end
end

elseif GetRace(NPC) == 9 then -- HUMAN
 if GetGender(NPC) == 1 then -- MALE
     local choice = MakeRandomInt(1, 3)
     if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_583690dc.mp3", "Summon help!  We have invaders!", "", 3340212225, 279643307, Spawn)
 elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a30c4f9d.mp3", "To arms!", "", 1238020980, 748146443, Spawn)
  elseif choice == 3 then
   PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a203c9ec.mp3", "Prepare to face your doom, meddler.", "", 1496819882, 365167432)
   end
elseif GetGender(NPC) == 2 then
    local choice = MakeRandomInt(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_aggro_gf_583690dc.mp3", "Summon help!  We have invaders!", "", 1598905349, 2204481929, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_aggro_gf_a30c4f9d.mp3", "To arms!", "", 2291750057, 1030180613, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_aggro_gf_a203c9ec.mp3", "Prepare to face your doom, meddler.", "", 3593389433, 3838830228, Spawn)
    end
end

elseif GetRace(NPC) == 12 then -- OGRE
if GetGender(NPC) == 1 then -- MALE
    local choice = MakeRandomInt(1, 5)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_aggro_gm_73e0b841.mp3", "Didn't expect to run into me, did you?", "", 2798482342, 2779936312, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_aggro_gm_7dd48aa0.mp3", "Destroy all of the intruders!", "", 839435710, 984808121, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_aggro_gm_d4cfd470.mp3", "Feel the might of Rallos!", "", 4147080812, 3504771687, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_aggro_gm_14f58c07.mp3", "Enemies approach. Kill them all!", "", 3023102358, 1690481813, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_aggro_gm_616f0d11.mp3", "Here they come!", "", 2058930788, 2409450830, Spawn)
    elseif choice == 5 then
    PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_aggro_gm_c8053a6e.mp3", "Alert the commander that intruders are here!", "", 3671636011, 19130394, Spawn)
    end
elseif GetGender(NPC) == 2 then -- FEMALE
    local choice = MakeRandomInt(1, 6)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_aggro_gf_c8053a6e.mp3", "Alert the commander that intruders are here!", "", 4095112003, 2636471416, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_aggro_gf_14f58c07.mp3", "Enemies approach. Kill them all!", "", 2676371437, 475514690, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_aggro_gf_616f0d11.mp3", "Here they come!", "", 3827960870, 1418011349, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_aggro_gf_7dd48aa0.mp3", "Destroy all of the intruders!", "", 3699228325, 3223205316, Spawn)
    elseif choice == 5 then
    PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_aggro_gf_d4cfd470.mp3", "Feel the might of Rallos!", "", 760635308, 455953200, Spawn)
    elseif choice == 6 then
    PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_aggro_gf_73e0b841.mp3", "Didn't expect to run into me, did you?", "", 1296281253, 1199123109, Spawn)
    end
end

elseif GetRace(NPC) == 14 then -- TROLL
    if GetGender(NPC) == 1 then -- MALE
    local choice = MakeRandomInt(1, 6)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/optional5/troll_base_2/ft/troll/troll_base_2_1_aggro_gm_92aae4b4.mp3", "I'll rend you limb from limb.", "", 49787000, 49787000, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional5/troll_base_2/ft/troll/troll_base_2_1_aggro_gm_62fd0e82.mp3", "What smells so good?", "", 118237492, 3945579326, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_aggro_gm_b7e0b3a.mp3", "Me going to eat your kidney first.", "", 3664886715, 2450110061, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_aggro_gm_f06d6bb9.mp3", "Not nice to interrupt dinner.", "", 573837171, 4255493444, Spawn)
    elseif choice == 5 then
    PlayFlavor(NPC, "voiceover/english/optional5/troll_base_2/ft/troll/troll_base_2_1_aggro_gm_d5e592e8.mp3", "Wuh? Time for pain!", "", 1834948398, 3855615475, Spawn)
    elseif choice == 6 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_aggro_gm_d1a345c7.mp3", "I'm gonna give you a smile like ol' one tooth!", "", 2209033822, 2591536638, Spawn)
    end
    elseif GetGender(NPC) == 2 then -- FEMALE
    local choice = MakeRandomInt(1, 6)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_aggro_gf_b7e0b3a.mp3", "Me going to eat your kidney first.", "", 750980753, 3740010516, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_2/ft/troll/troll_base_2_1_aggro_gf_92aae4b4.mp3", "I'll rend you limb from limb.", "", 4151518928, 507789130, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_aggro_gf_f06d6bb9.mp3", "Not nice to interrupt dinner.", "", 3860408661, 3681593402, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_2/ft/troll/troll_base_2_1_aggro_gf_d5e592e8.mp3", "Ungh? Time for pain!", "", 1433604950, 3891891742, Spawn)
    elseif choice == 5 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_2/ft/troll/troll_base_2_1_aggro_gf_62fd0e82.mp3", "What smells so good?", "", 3335229907, 713747453, Spawn)
    elseif choice == 6 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_aggro_gf_d1a345c7.mp3", "I'm gonna give you a smile like ol' one tooth!", "", 1201784314, 2598207561, Spawn)
    end
end
    
elseif GetRace(NPC) == 6 then -- HALF ELF
 if GetGender(NPC) == 2 then -- FEMALE
 PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_aggro_gf_a68f64b6.mp3", "Alarm! Alarm!", "", 1220383018, 2962002142, Spawn)
end


elseif GetRace(NPC) == 13 then -- RATONGA
 if GetGender(NPC) == 1 then -- MALE
  local choice = MakeRandomInt(1, 3)
  if choice == 1 then    
 PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_2/ft/ratonga/ratonga_base_2_1_aggro_gm_88cef174.mp3", "Overhear my plansies. Gore you I will!", "", 3355146665, 1217299863, Spawn)
 elseif choice == 2 then
 PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_2/ft/ratonga/ratonga_base_2_1_aggro_gm_a3d8a506.mp3", "Not very nice of you to be all sneaky.", "", 1692637839, 2224104916, Spawn)
 elseif choice == 3 then
 PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_2/ft/ratonga/ratonga_base_2_1_aggro_gm_1fca68dc.mp3", "Greetings friend, how would you like to die?", "", 2689492018, 3168721640, Spawn)
 end
elseif GetGender(NPC) == 2 then -- FEMALE
 local choice = MakeRandomInt(1, 2)
 if choice == 1 then
 PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_aggro_gf_ce5970ec.mp3", "Startle us, you did! We'll remedy that.", "", 3905874632, 4086824059, Spawn)
 elseif choice == 2 then
 PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_aggro_gf_4af7a99.mp3", "You're not as sneaky as you thought.", "", 1898398655, 853136085, Spawn)
 elseif choice == 3 then
 PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_aggro_gf_7c145a1f.mp3", "Sees us, did we? Must not let you talk then.", "", 2661963919, 697614069, Spawn)
    end
end


   end  -- END OF THE "RACE CHECK"
       end   -- END OF THE FUNCTION


function generic_death(NPC, Spawn)  -- CALLED ON NPC DEATH
      
if GetRace(NPC) == 1  then  -- DARK ELF
    if GetGender(NPC) == 1  then -- MALE
    local choice = MakeRandomInt(1, 2)
    if choice == 1 then  
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_3_death_gm_25576197.mp3", "I will have vengeance!", "", 433254383, 1749773166, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_3_death_gm_8d7bb2b9.mp3", "Hold them and I'll return with help!", "", 1905250318, 2280015161, Spawn)
    end
    elseif GetGender(NPC) == 2 then -- FEMALE
    local choice = MakeRandomInt(1, 6)
    if choice == 1 then    
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_1_death_gf_25576197.mp3", "I will have vengeance!", "", 2208779791, 246336299, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_3_death_gf_8d7bb2b9.mp3", "Hold them and I'll return with help!", "", 291851398, 546843337, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_death_gf_578a99eb.mp3", "Fall back, order a tactical retreat!", "", 2107410109, 3046072336, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_1_death_gf_8d7bb2b9.mp3", "Hold them and I'll return with help!", "", 2248940979, 3184577285, Spawn)
    elseif choice == 5 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_death_gf_8bbec3e3.mp3", "No matter what I promise, you will not survive!", "", 2832420662, 2950405548, Spawn)
    elseif choice == 6 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_3_death_gf_25576197.mp3", "I will have vengeance!", "", 58514974, 479667048, Spawn)
    end
end

elseif GetRace(NPC) == 12 then -- OGRE
    if GetGender(NPC) == 1 then -- MALE
        local choice = MakeRandomInt(1, 4)
        if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_death_gm_f8085354.mp3", "Fall back and regroup.  The enemy has the upper hand!", "", 2889056279, 2002341414, Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_death_gm_258f0139.mp3", "Do not surrender to the invaders!", "", 703053605, 1971945197, Spawn)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_death_gm_da93daa6.mp3", "Combat withdrawal! Follow me!", "", 261326210, 2774227809, Spawn)
        elseif choice == 4 then
        PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_death_gm_4be2fecc.mp3", "You may win the battle, but the war is far from over!", "", 9065845, 102503565, Spawn)
        end
   elseif GetGender(NPC) == 2 then -- FEMALE
        local choice = MakeRandomInt(1, 4)
         if choice == 1 then
         PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_death_gf_4be2fecc.mp3", "You may win the battle, but the war is far from over!", "", 3327742171, 2045821391, Spawn)
         elseif choice == 2 then
         PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_death_gf_da93daa6.mp3", "Combat withdrawal! Follow me!", "", 2996415396, 2001289891, Spawn)
         elseif choice == 3 then
         PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_death_gf_f8085354.mp3", "Fall back and regroup.  The enemy has the upper hand!", "", 3880002939, 3376376480, Spawn)
         elseif choice == 4 then
         PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_halfhealth_gf_5a6c112c.mp3", "Do not surrender to the invaders!", "", 928337336, 4254092896, Spawn)
         end
end

elseif GetRace(NPC) == 14 then -- TROLL
    if GetGender(NPC) == 1 then -- MALE
    local choice = MakeRandomInt(1, 4)
    if choice == 1 then    
    PlayFlavor(NPC, "voiceover/english/optional5/troll_base_2/ft/troll/troll_base_2_1_death_gm_a0975726.mp3", "I'll take their share.", "", 3447375966, 2362973946, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_death_gm_e8c02d1e.mp3", "Feel kinda sleepy. Whacha do to me?", "", 3298938103, 1410551282, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional5/troll_base_2/ft/troll/troll_base_2_1_death_gm_629228e0.mp3", "They were weak and deserved to die.", "", 1907912454, 2630165050, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_death_gm_e1755f3f.mp3", "Come back you coward! I'm not dead yet.", "", 86111608, 3954832486, Spawn)
    end
    elseif GetGender(NPC) == 2 then -- FEMALE
    local choice = MakeRandomInt(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_death_gf_e1755f3f.mp3", "Come back you coward! I'm not dead yet.", "", 695536554, 1919499087, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_2/ft/troll/troll_base_2_1_death_gf_a0975726.mp3", "I'll take their share.", "", 579954056, 2613873892, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_death_gf_e8c02d1e.mp3", "Feel kinda sleepy. Whacha do to me?", "", 3447489483, 4136415601, Spawn)
    end
end 



elseif GetRace(NPC) == 9 then -- HUMAN
    if GetGender(NPC) == 1 then -- MALE
    local choice = MakeRandomInt(1,2)
    if choice == 1 then   
    PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_death_gm_7612214f.mp3", "All hands retreat!", "", 3033325782, 1103449586, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_death_gm_3e24be0b.mp3", "Cover me while we regroup!", "", 144951462, 3922442401, Spawn)
    end
    elseif GetGender(NPC) == 2 then -- FEMALE
    local choice = MakeRandomInt(1,2)
    if choice == 1 then   
    PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_death_gf_7612214f.mp3", "All hands retreat!", "", 3620177897, 757784861, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_death_gf_3e24be0b.mp3", "Cover me while we regroup!", "", 3876965132, 3906042379, Spawn)
    end
end    


elseif GetRace(NPC) == 6 then -- HALF ELF
 if GetGender(NPC) == 2 then -- FEMALE
 PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_death_gf_1a659852.mp3", "We must withdraw before we all die!", "", 2249500792, 2154633904, Spawn)
end

elseif GetRace(NPC) == 13 then -- RATONGA
 if GetGender(NPC) == 1 then -- MALE
  local choice = MakeRandomInt(1, 2)
  if choice == 1 then
  PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_2/ft/ratonga/ratonga_base_2_1_death_gm_8c411c1d.mp3", "Should have escaped while I had the chance.", "", 540449850, 3466919170, Spawn)
  elseif choice == 2 then
  PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_2/ft/ratonga/ratonga_base_2_1_death_gm_3595da9d.mp3", "Take my secrets to my grave, I shall.", "", 2934272708, 1278832110, Spawn)
  end
elseif GetGender(NPC) == 2 then -- FEMALE
  PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_death_gf_1a206352.mp3", "Time to leave, yes. Definitely time to leave.", "", 3197509537, 237885544, Spawn)
end

end   -- END OF THE "RACE CHECK"
   end -- END OF THE FUNCTION


function generic_killed(NPC, Spawn)
if GetRace(NPC) == 9 then -- HUMAN
 if GetGender(NPC) == 1 then -- MALE
    local choice = MakeRandomInt(1,3)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_ec0cd85a.mp3", "I hope they're all this easy.", "", 2687289628, 2303639320)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_4553e1e0.mp3", "Flee now or meet this one's fate.", "", 3032162747, 1359206304)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_153f12ff.mp3", "One down!", "", 3009518664, 4140389760)
    end    
elseif GetGender(NPC) == 2 then -- FEMALE
    local choice = MakeRandomInt(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_victory_gf_ec0cd85a.mp3", "I hope they're all this easy.", "", 1073758360, 3342649012, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_victory_gf_153f12ff.mp3", "One down!", "", 188812292, 2173257116, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_victory_gf_6f459088.mp3", "Flee now or meet this one's fate.", "", 290765367, 473549337, Spawn)
    end 
end

elseif GetRace(NPC) == 14 then -- TROLL
    if GetGender(NPC) == 1 then -- MALE
    local choice = MakeRandomInt(1, 4)
    if choice == 1 then       
    PlayFlavor(NPC, "voiceover/english/optional5/troll_base_2/ft/troll/troll_base_2_1_victory_gm_3ed1b9f0.mp3", "Mmmmm, I can taste that one now.", "", 2247378739, 1927164734, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_victory_gm_ce5c7f78.mp3", "We gave them the pummeling.", "", 1293662769, 1693540191, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_victory_gm_ae6d66e3.mp3", "Teach you to mess with the best.", "", 927528340, 2751002174, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_victory_gm_7dbd4c91.mp3", "That one will make a nice stew.", "", 3023908049, 2537001461, Spawn)
    end
    elseif GetGender(NPC) == 2 then -- FEMALE
    local choice = MakeRandomInt(1, 4)
    if choice == 1 then    
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_2/ft/troll/troll_base_2_1_victory_gf_c8721d34.mp3", "Culling the weak from the herd.", "", 1547671830, 2217549810, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_victory_gf_7dbd4c91.mp3", "That one will make a nice stew.", "", 4238344721, 832643250, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_2/ft/troll/troll_base_2_1_victory_gf_aea1ef35.mp3", "Save that one before he spoils.", "", 3455464022, 3427621456, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_2/ft/troll/troll_base_2_1_victory_gf_3ed1b9f0.mp3", "Mmmmm, I can taste that one now.", "", 4133059096, 3820060055, Spawn)
   end
end

   
 elseif GetRace(NPC) == 1  then  -- DARK ELF
    if GetGender(NPC) == 1  then -- MALE
    local choice = MakeRandomInt(1, 3)
    if choice == 1 then    
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_2_victory_gm_f5088778.mp3", "Get up! Death isn't good enough for you!", "", 3035053196, 1767371730, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_2_victory_gm_dff26fa.mp3", "It is a shame we must end it this way ... I could have used you.", "", 1007700429, 3127864817, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_2_victory_gm_f4fc7cf8.mp3", "Did you really think you had a chance?", "", 3732622480, 2512047638, Spawn)
    end
    elseif GetGender(NPC) == 2 then -- FEMALE
    local choice = MakeRandomInt(1, 2)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_victory_gf_c81106e.mp3", "You are as pathetic in death as you are in life!", "", 3253627052, 3680511275, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_victory_gf_98aaa576.mp3", "The Teir'Dal do not take prisoners!", "", 2029735457, 1554181843, Spawn)
    end
end

elseif GetRace(NPC) == 12 then -- OGRE
  if GetGender(NPC) == 1 then -- MALE
     local choice = MakeRandomInt(1, 3)
     if choice == 1 then
     PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_victory_gm_1de29528.mp3", "Death was your only escape from me, coward!", "", 3626940960, 2890932770, Spawn)
     elseif choice == 2 then
     PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_victory_gm_a914f34c.mp3", "They get easier every time!", "", 1293022504, 4136529132, Spawn)
     elseif choice == 3 then
     PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_victory_gm_f08fc0b0.mp3", "For the glory of battle!", "", 15475659, 3009117692, Spawn)
     end
elseif GetGender(NPC) == 2 then -- FEMALE
     local choice = MakeRandomInt(1, 3)
     if choice == 1 then
     PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_victory_gf_1c683d69.mp3", "Leave the carcasses to rot!", "", 1941316513, 697971111, Spawn)
     elseif choice == 2 then
     PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_victory_gf_90f4b426.mp3", "Forward! Leave no survivors!", "", 1746137281, 1712355529, Spawn)
     elseif choice == 3 then
     PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_victory_gf_5a68124d.mp3", "Now, to finish your pitiful friends.", "", 2707229528, 1200546437, Spawn)
     end
end

elseif GetRace(NPC) == 13 then -- RATONGA
 if GetGender(NPC) == 1 then -- MALE
 local choice = MakeRandomInt(1, 2)
 if choice == 1 then
 PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_2/ft/ratonga/ratonga_base_2_1_victory_gm_63a80a84.mp3", "Ah, yes excellent no more worries.", "", 3582294440, 3055844859, Spawn)
 elseif choice == 2 then
 PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_2/ft/ratonga/ratonga_base_2_1_victory_gm_d7a5c042.mp3", "No more snooping for you.", "", 2291733466, 1243527327, Spawn)
 end
 elseif GetGender(NPC) == 2 then -- FEMALE
 local choice = MakeRandomInt(1, 2)
 if choice == 1 then
 PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_victory_gf_15e8fc93.mp3", "One less worry in my life!", "", 499443345, 1203285152, Spawn)
 elseif choice == 2 then
 PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_victory_gf_935883a.mp3", "Shhh ... shhh ... it's ok ... shhh ...shhh. Stop fighting it...", "", 3346721105, 4290589490, Spawn)
 end
end
 
   end -- END OF THE "RACE CHECK"
       end -- END OF THE FUNCTION



function generic_healthchanged(NPC, Spawn) -- CALLED WHEN NPC HP HAS CHANGED
if GetRace(NPC) == 14 then -- TROLL
    if GetGender(NPC) == 1 then -- MALE
        local choice = MakeRandomInt(1, 6)
        if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/optional5/troll_base_2/ft/troll/troll_base_2_1_halfhealth_gm_5ba543d6.mp3", "That'll grow back.", "", 1284662505, 182502504, Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_halfhealth_gm_f462f6ff.mp3", "Is this supposed to hurt?", "", 4202180867, 1393988988, Spawn)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_battle_gm_ee1e1a8.mp3", "Blood bath!", "", 3180104139, 2926558993, Spawn)
        elseif choice == 4 then
        PlayFlavor(NPC, "voiceover/english/optional5/troll_base_2/ft/troll/troll_base_2_1_halfhealth_gm_9e239695.mp3", "I can taste my own blood.", "", 3182034210, 3617807524, Spawn)
        elseif choice == 5 then
        PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_halfhealth_gm_aa145f4d.mp3", "Neat, that'll leave a pretty scar", "", 675684950, 4088135432, Spawn)
        elseif choice == 6 then
        PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_battle_mm_2b9aa520.mp3", "Dis going to hurt you a lot.", "", 3832530810, 503465739, Spawn)
        end
  elseif GetGender(NPC) == 2 then -- FEMALE
       local choice = MakeRandomInt(1, 6)
       if choice == 1 then
       PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_battle_mf_67c94743.mp3", "Careful not to damage the tasty livers.", "", 943087800, 1378210001, Spawn)
       elseif choice == 2 then
       PlayFlavor(NPC, "voiceover/english/optional3/troll_base_2/ft/troll/troll_base_2_1_halfhealth_gf_5ba543d6.mp3", "That'll grow back.", "",  4062170117, 809175527, Spawn)
       elseif choice == 3 then
       PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_halfhealth_gf_aa145f4d.mp3", "Neat, that'll leave a pretty scar", "", 70455099, 2953679351, Spawn)
       elseif choice == 4 then
       PlayFlavor(NPC, "voiceover/english/optional3/troll_base_2/ft/troll/troll_base_2_1_halfhealth_gf_9e239695.mp3", "I can taste my own blood.", "", 630688016, 620713228, Spawn)
       elseif choice == 5 then
       PlayFlavor(NPC, "voiceover/english/optional3/troll_base_2/ft/troll/troll_base_2_1_victory_gf_3ed1b9f0.mp3", "Mmmmm, I can taste that one now.", "", 4133059096, 3820060055, Spawn)
       elseif choice == 6 then
       PlayFlavor(NPC, "voiceover/english/optional3/troll_base_2/ft/troll/troll_base_2_1_victory_gf_aea1ef35.mp3", "Save that one before he spoils.", "", 3455464022, 3427621456, Spawn)
       end
end

elseif GetRace(NPC) == 12 then -- OGRE
  if GetGender(NPC) == 1 then -- MALE
    local choice = MakeRandomInt(1, 9)
    if choice == 1 then 
    PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_halfhealth_gm_aff2b15d.mp3", "Now I'm really angry!", "", 1599348947, 4096819162, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_halfhealth_gm_1ad2d46f.mp3", "Your petty weapons are no match for me!", "", 2269900119, 3290320421, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_halfhealth_gm_581c2926.mp3", "You'll pay for that!", "", 2366218696, 2114997045, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_battle_gm_a507b2f0.mp3", "All our enemies must die but slowly and in agony!", "", 1370114090, 652323148, Spawn)
    elseif choice == 5 then
    PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_halfhealth_gm_5a6c112c.mp3", "Agggggh!  There is no pain only death and failure!", "", 2051650869, 1276361533, Spawn)
    elseif choice == 6 then
    PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_battle_mm_9fc6deb.mp3", "It's easier if you start begging now!", "", 399736626, 2966532528, Spawn)
    elseif choice == 7 then
    PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_battle_gm_fa6b8296.mp3", "They cannot match our strength. Charge!", "", 746723290, 3157649317, Spawn)
    elseif choice == 8 then
    PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_battle_mm_5bb7e77c.mp3", "I will turn you into a stain on the ground!", "", 2590854690, 2742765511, Spawn)
    elseif choice == 9 then
    PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_battle_gm_b07ff13.mp3", "Pummel them into mulch!", "",  4059634632, 2590934226, Spawn)
    end
elseif GetGender(NPC) == 2 then -- FEMALE
    local choice = MakeRandomInt(1, 4)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_halfhealth_gf_aff2b15d.mp3", "Now I'm really angry!", "", 3362643729, 1907494922, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_halfhealth_gf_581c2926.mp3", "You'll pay for that!", "", 480032723, 3225416629, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_battle_gf_bbb1e860.mp3", "Our strength is unstoppable!", "", 988836578, 2729704221, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_halfhealth_gf_5a6c112c.mp3", "Agggggh!  There is no pain only death and failure!", "", 3230209009, 2587978067, Spawn)
    end
end

elseif GetRace(NPC) == 1  then  -- DARK ELF
    if GetGender(NPC) == 1  then -- MALE
    local choice = MakeRandomInt(1, 4)
    if choice == 1 then       
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_2_halfhealth_gm_577ab333.mp3", "You'll pay for that one, peon!", "", 2956531892, 297392306, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_3_halfhealth_gm_577ab333.mp3", "You'll pay for that one, peon!", "", 475204402, 2998439968, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_2_battle_mm_c0d1fca7.mp3", "Bleed for me now, minion!", "", 4294804548, 755847298, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_2_battle_mm_4832fde6.mp3", "Now, prepare to be eviscerated!", "", 3289459313, 747137322, Spawn)
    end
    elseif GetGender(NPC) == 2 then -- FEMALE
    local choice = MakeRandomInt(1, 6)
    if choice == 1 then    
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_battle_mf_2304c1b1.mp3", "For you there will be no mercy.", "", 3416003611, 1827385682, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_2_halfhealth_gf_9e244d19.mp3", "How dare you!", "", 2263865273, 2956956838, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_halfhealth_gf_d3fcd4c5.mp3", "How dare you strike me!", "", 1224879133, 2564393271, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_battle_gf_666198d0.mp3", "Grind them all into dust!", "", 1850467700, 1020294863, Spawn)
    elseif choice == 5 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_1_halfhealth_gf_577ab333.mp3", "You'll pay for that one, peon!", "", 2534123849, 501758946, Spawn)
    elseif choice == 6 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_3_battle_gf_316a6c63.mp3", "I crave your suffering!", "", 515633448, 1264888848, Spawn)
    end
end

elseif GetRace(NPC) == 9 then -- HUMAN
 if GetGender(NPC) == 1 then -- MALE
  local choice = MakeRandomInt(1, 2)
  if choice == 1 then    
  PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_halfhealth_gm_1babf022.mp3", "Is that all you have?", "", 170267964, 1158805306, Spawn)
  elseif choice == 2 then
  PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_halfhealth_gm_8529e507.mp3", "I can't hold them forever!", "", 644448824, 755050547, Spawn)
  end
elseif GetGender(NPC) == 2 then -- FEMALE
  PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_halfhealth_gf_8529e507.mp3", "I can't hold them forever!", "", 3371581229, 792393228, Spawn)
end

elseif GetRace(NPC) == 13 then -- RATONGA
 if GetGender(NPC) == 1 then -- MALE
  local choice = MakeRandomInt(1, 2)
  if choice == 1 then        
 PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_2/ft/ratonga/ratonga_base_2_1_halfhealth_gm_ff30e9f.mp3", "Shifty thingsies you are.", "", 1278101479, 3726164952, Spawn)
 elseif choice == 2 then
 PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_2/ft/ratonga/ratonga_base_2_1_battle_gm_e4984551.mp3", "Timeses for you to bleed!", "", 3561855509, 132291331, Spawn)
 end
end

elseif GetRace(NPC) == 6 then -- HALF ELF
 if GetGender(NPC) == 2 then -- FEMALE
 PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_halfhealth_gf_e48659f9.mp3", "Now, that really hurt!", "", 413378164, 719939114, Spawn)
 end

     end -- END OF THE "RACE CHECK"
end -- END OF THE FUNCTION
