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
    elseif GetGender(NPC) == 2 then
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_1_aggro_gf_beacbb30.mp3", "I hope you put your affairs in order.", "", 4241642069, 3957487704, Spawn)
end
   end
  end
  
  function generic_death(NPC, Spawn)
if GetRace(NPC) == 1  then  -- DARK ELF
    if GetGender(NPC) == 1  then -- MALE
    Say(NPC, "My  DeathVoiceOvers is missing right now.")
    elseif GetGender(NPC) == 2 then -- FEMALE
    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_1_death_gf_25576197.mp3", "I will have vengeance!", "", 2208779791, 246336299, Spawn)
end
end
   end