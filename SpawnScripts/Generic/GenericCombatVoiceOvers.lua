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
    PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_aggro_gm_beacbb30.mp3", "I hope you put your affairs in order.", "",  799093996, 16617637, Spawn)
    elseif GetGender(NPC) == 2 then -- FEMALE
    local choice = MakeRandomInt(1, 2)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_1_aggro_gf_beacbb30.mp3", "I hope you put your affairs in order.", "", 4241642069, 3957487704, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_2_aggro_gf_10fd87eb.mp3", "There is no escape for you now!", "", 3743520097, 2328340147, Spawn)
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
end

elseif GetRace(NPC) == 12 then -- OGRE
if GetGender(NPC) == 1 then -- MALE
    local choice = MakeRandomInt(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_aggro_gm_73e0b841.mp3", "Didn't expect to run into me, did you?", "", 2798482342, 2779936312, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_aggro_gm_7dd48aa0.mp3", "Destroy all of the intruders!", "", 839435710, 984808121, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_aggro_gm_d4cfd470.mp3", "Feel the might of Rallos!", "", 4147080812, 3504771687, Spawn)
    end
elseif GetGender(NPC) == 2 then -- FEMALE
    local choice = MakeRandomInt(1, 2)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_aggro_gf_c8053a6e.mp3", "Alert the commander that intruders are here!", "", 4095112003, 2636471416, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_aggro_gf_14f58c07.mp3", "Enemies approach. Kill them all!", "", 2676371437, 475514690, Spawn)
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
    local choice = MakeRandomInt(1, 2)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_aggro_gf_b7e0b3a.mp3", "Me going to eat your kidney first.", "", 750980753, 3740010516, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_2/ft/troll/troll_base_2_1_aggro_gf_92aae4b4.mp3", "I'll rend you limb from limb.", "", 4151518928, 507789130, Spawn)
     end
end
   end  -- END OF THE "RACE CHECK"
       end   -- END OF THE FUNCTION


  function generic_death(NPC, Spawn)  -- CALLED ON NPC DEATH
if GetRace(NPC) == 1  then  -- DARK ELF
    if GetGender(NPC) == 1  then -- MALE
    Say(NPC, "My  DeathVoiceOvers is missing right now.")
    elseif GetGender(NPC) == 2 then -- FEMALE
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_1_death_gf_25576197.mp3", "I will have vengeance!", "", 2208779791, 246336299, Spawn)
    end

elseif GetRace(NPC) == 12 then -- OGRE
    if GetGender(NPC) == 1 then -- MALE
        local choice = MakeRandomInt(1, 2)
        if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_death_gm_f8085354.mp3", "Fall back and regroup.  The enemy has the upper hand!", "", 2889056279, 2002341414, Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_death_gm_258f0139.mp3", "Do not surrender to the invaders!", "", 703053605, 1971945197, Spawn)
        end
   elseif GetGender(NPC) == 2 then -- FEMALE
        local choice = MakeRandomInt(1, 2)
         if choice == 1 then
         PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_death_gf_4be2fecc.mp3", "You may win the battle, but the war is far from over!", "", 3327742171, 2045821391, Spawn)
         elseif choice == 2 then
         PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_death_gf_da93daa6.mp3", "Combat withdrawal! Follow me!", "", 2996415396, 2001289891, Spawn)
         end
end

elseif GetRace(NPC) == 14 then -- TROLL
    if GetGender(NPC) == 1 then -- MALE
    local choice = MakeRandomInt(1, 2)
    if choice == 1 then    
    PlayFlavor(NPC, "voiceover/english/optional5/troll_base_2/ft/troll/troll_base_2_1_death_gm_a0975726.mp3", "I'll take their share.", "", 3447375966, 2362973946, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_death_gm_e8c02d1e.mp3", "Feel kinda sleepy. Whacha do to me?", "", 3298938103, 1410551282, Spawn)
    end
    elseif GetGender(NPC) == 2 then -- FEMALE
    local choice = MakeRandomInt(1, 2)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_death_gf_e1755f3f.mp3", "Come back you coward! I'm not dead yet.", "", 695536554, 1919499087, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/troll_base_2/ft/troll/troll_base_2_1_death_gf_a0975726.mp3", "I'll take their share.", "", 579954056, 2613873892, Spawn)
    end
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
end

elseif GetRace(NPC) == 14 then -- TROLL
    if GetGender(NPC) == 1 then -- MALE
    PlayFlavor(NPC, "voiceover/english/optional5/troll_base_2/ft/troll/troll_base_2_1_victory_gm_3ed1b9f0.mp3", "Mmmmm, I can taste that one now.", "", 2247378739, 1927164734, Spawn)
   end

   end -- END OF THE "RACE CHECK"
       end -- END OF THE FUNCTION



function generic_healthchanged(NPC, Spawn) -- CALLED WHEN NPC HP HAS CHANGED
if GetRace(NPC) == 14 then -- TROLL
    if GetGender(NPC) == 1 then -- MALE
        local choice = MakeRandomInt(1,2)
        if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/optional5/troll_base_2/ft/troll/troll_base_2_1_halfhealth_gm_5ba543d6.mp3", "That'll grow back.", "", 1284662505, 182502504, Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_halfhealth_gm_f462f6ff.mp3", "Is this supposed to hurt?", "", 4202180867, 1393988988, Spawn)
        end
  elseif GetGender(NPC) == 2 then -- FEMALE
       local choice = MakeRandomInt(1,2)
       if choice == 1 then
       PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_battle_mf_67c94743.mp3", "Careful not to damage the tasty livers.", "", 943087800, 1378210001, Spawn)
       elseif choice == 2 then
       PlayFlavor(NPC, "voiceover/english/optional3/troll_base_2/ft/troll/troll_base_2_1_halfhealth_gf_5ba543d6.mp3", "That'll grow back.", "",  4062170117, 809175527, Spawn)
       end
end

elseif GetRace(NPC) == 12 then -- OGRE
  if GetGender(NPC) == 1 then -- MALE
    local choice = MakeRandomInt(1,2)
    if choice == 1 then 
    PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_halfhealth_gm_aff2b15d.mp3", "Now I'm really angry!", "", 1599348947, 4096819162, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_halfhealth_gm_1ad2d46f.mp3", "Your petty weapons are no match for me!", "", 2269900119, 3290320421, Spawn)
    end
elseif GetGender(NPC) == 2 then -- FEMALE
    local choice = MakeRandomInt(1,2)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_halfhealth_gf_aff2b15d.mp3", "Now I'm really angry!", "", 3362643729, 1907494922, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_halfhealth_gf_581c2926.mp3", "You'll pay for that!", "", 480032723, 3225416629, Spawn)
    end
end

     end -- END OF THE "RACE CHECK"
end -- END OF THE FUNCTION
