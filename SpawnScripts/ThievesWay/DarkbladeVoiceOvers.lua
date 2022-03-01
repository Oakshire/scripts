--[[
    Script Name    : SpawnScripts/ThievesWay/DarkbladeVoiceOvers.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.28 05:06:29
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

function generic_aggro(NPC, Spawn)
    
 if GetRace(NPC) == 13 then -- RATONGA
 if GetGender(NPC) == 1 then -- MALE
 if not HasLanguage(Spawn, 26) then
 local choice = MakeRandomInt(1, 3)
 if choice == 1 then
 PlayFlavor(NPC, "voiceover/english/optional3/ratonga_darkblades/ft/ratonga/ratonga_darkblades_2_garbled_gm_5a81ec49.mp3", "Hekveten plava SU klina", "", 1436216743, 4000292051, Spawn, 26)
 elseif choice == 2 then
 PlayFlavor(NPC, "voiceover/english/optional3/ratonga_darkblades/ft/ratonga/ratonga_darkblades_2_garbled_gm_bc265d9b.mp3", "EeeSIP   qweek  MEEerallow  neep", "", 1043216447, 927355975, Spawn, 26)
 elseif choice == 3 then
 PlayFlavor(NPC, "voiceover/english/optional3/ratonga_darkblades/ft/ratonga/ratonga_darkblades_1_garbled_gm_21432a6a.mp3", "TravaHAS merallund kBORrten illanya", "", 398320326, 463767069, Spawn, 26)
 elseif choice == 4 then
 PlayFlavor(NPC, "voiceover/english/optional3/ratonga_darkblades/ft/ratonga/ratonga_darkblades_1_garbled_gm_5c77ba46.mp3", "Chee   ava   kirAH   tay!", "", 234321071, 3429868311, Spawn, 26)
 end
  end
end


elseif GetRace(NPC) == 9 then -- HUMAN
 if GetGender(NPC) == 1 then -- MALE
  local choice = MakeRandomInt(1, 2)
  if choice == 1 then
 PlayFlavor(NPC, "voiceover/english/optional5/human_darkblades/ft/human/human_darkblades_1_aggro_gm_aa3f0f80.mp3", "You won't take me alive!", "", 1726452132, 35554511, Spawn)
 elseif choice == 2 then
 PlayFlavor(NPC, "voiceover/english/optional5/human_darkblades/ft/human/human_darkblades_1_aggro_gm_c87eb3d1.mp3", "No where to run, craven!", "", 866153605, 1587075536, Spawn)
 end
   end
 
 
 elseif GetRace(NPC) == 6 then -- HALF ELF
 if GetGender(NPC) == 1 then -- MALE
  if not HasLanguage(Spawn, 7) then
  local choice = MakeRandomInt(1, 3)
  if choice == 1 then    
  PlayFlavor(NPC, "voiceover/english/halfelf_darkblades/ft/halfelf/halfelf_darkblades_1_garbled_gm_feb1d2e4.mp3", "Pohow arged yoop dern todica, arrrrrg!", "", 331071687, 3362858857, Spawn, 7)
  elseif choice == 2 then
  PlayFlavor(NPC, "voiceover/english/halfelf_darkblades/ft/halfelf/halfelf_darkblades_1_garbled_gm_84555678.mp3", "Thayank  dav sien  flanahay", "", 103136684, 2536939864, Spawn, 7)
  elseif choice == 3 then
  PlayFlavor(NPC, "voiceover/english/halfelf_darkblades/ft/halfelf/halfelf_darkblades_1_garbled_gm_8436f046.mp3", "Falada meirsyn kobalas nolvalen", "", 460639228, 2009227827, Spawn, 7)
  end
end
end

end -- END OF RACIAL CHECK
end -- END OF FUNCTION



function generic_death(NPC, Spawn)
    

if GetRace(NPC) == 9 then -- HUMAN
 if GetGender(NPC) == 1 then -- MALE
  local choice = MakeRandomInt(1, 2)
  if choice == 1 then    
  PlayFlavor(NPC, "voiceover/english/optional5/human_darkblades/ft/human/human_darkblades_2_death_gm_497acee7.mp3", "That just improves my cut of the loot!", "", 951301608, 1423572233, Spawn)
  elseif choice == 2 then
  PlayFlavor(NPC, "voiceover/english/optional5/human_darkblades/ft/human/human_darkblades_1_death_gm_e7600f72.mp3", "Now who will pick the locks?!", "", 847571021, 1367196231, Spawn)
 end
end

 elseif GetRace(NPC) == 13 then -- RATONGA
 if GetGender(NPC) == 1 then -- MALE
 if not HasLanguage(Spawn, 26) then
 local choice = MakeRandomInt(1, 3)
 if choice == 1 then
 PlayFlavor(NPC, "voiceover/english/optional3/ratonga_darkblades/ft/ratonga/ratonga_darkblades_2_garbled_gm_5a81ec49.mp3", "Hekveten plava SU klina", "", 1436216743, 4000292051, Spawn, 26)
 elseif choice == 2 then
 PlayFlavor(NPC, "voiceover/english/optional3/ratonga_darkblades/ft/ratonga/ratonga_darkblades_2_garbled_gm_bc265d9b.mp3", "EeeSIP   qweek  MEEerallow  neep", "", 1043216447, 927355975, Spawn, 26)
 elseif choice == 3 then
 PlayFlavor(NPC, "voiceover/english/optional3/ratonga_darkblades/ft/ratonga/ratonga_darkblades_1_garbled_gm_21432a6a.mp3", "TravaHAS merallund kBORrten illanya", "", 398320326, 463767069, Spawn, 26)
 elseif choice == 4 then
 PlayFlavor(NPC, "voiceover/english/optional3/ratonga_darkblades/ft/ratonga/ratonga_darkblades_1_garbled_gm_5c77ba46.mp3", "Chee   ava   kirAH   tay!", "", 234321071, 3429868311, Spawn, 26)
 end
  end
end

 elseif GetRace(NPC) == 6 then -- HALF ELF
 if GetGender(NPC) == 1 then -- MALE
  if not HasLanguage(Spawn, 7) then
  local choice = MakeRandomInt(1, 3)
  if choice == 1 then    
  PlayFlavor(NPC, "voiceover/english/halfelf_darkblades/ft/halfelf/halfelf_darkblades_1_garbled_gm_feb1d2e4.mp3", "Pohow arged yoop dern todica, arrrrrg!", "", 331071687, 3362858857, Spawn, 7)
  elseif choice == 2 then
  PlayFlavor(NPC, "voiceover/english/halfelf_darkblades/ft/halfelf/halfelf_darkblades_1_garbled_gm_84555678.mp3", "Thayank  dav sien  flanahay", "", 103136684, 2536939864, Spawn, 7)
  elseif choice == 3 then
  PlayFlavor(NPC, "voiceover/english/halfelf_darkblades/ft/halfelf/halfelf_darkblades_1_garbled_gm_8436f046.mp3", "Falada meirsyn kobalas nolvalen", "", 460639228, 2009227827, Spawn, 7)
  end
 end
end

end -- END OF RACIAL CHECK
end -- END OF FUNCTION