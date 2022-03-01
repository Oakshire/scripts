--[[
    Script Name    : SpawnScripts/Commonlands/aBlackshieldassassin.lua
    Script Author  : Premierio015
    Script Date    : 2020.11.17 06:11:14
    Script Purpose : 
                   : 
--]]



function spawn(NPC)
local choice = math.random(1,2)
if choice == 1 then
SpawnSet(NPC, "model_type", 132)
SpawnSet(NPC, "gender", 2) 
else
SpawnSet(NPC, "model_type", 134)
SpawnSet(NPC, "gender", 1) 
end
   end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end


function respawn(NPC)
         spawn(NPC)
end

function healthchanged(NPC, Spawn)
if GetGender(NPC) == 2 then
  local hp_percent = GetHP(NPC) / GetMaxHP(NPC)
	if hp_percent <= 0.50 then
PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_halfhealth_gf_1babf022.mp3", "Is that all you have?", "", 2979351329, 4050238683, Spawn)
end
   end
      end


function death(NPC, Spawn)
if GetGender(NPC) == 1 then
local chance = math.random(1, 100)
if chance <= 40 then
local choice2 = math.random(1, 2)
if choice2 == 1 then
PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_death_gm_3e24be0b.mp3", "Cover me while we regroup!", "", 144951462, 3922442401, Spawn)
else
PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_death_gm_7612214f.mp3", "All hands retreat!", "", 3033325782, 1103449586, Spawn)
end
elseif GetGender(NPC) == 2 then
local chance = math.random(1, 100)
if chance <= 40 then
PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_death_gf_7612214f.mp3", "All hands retreat!", "", 3620177897, 757784861, Spawn)
  end
     end
        end
           end



function aggro(NPC, Spawn)
if GetGender(NPC) == 2 then
local choice = math.random(1, 3)
if choice == 1 then
PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_aggro_gf_583690dc.mp3" , "Summon help!  We have invaders!", "", 1598905349, 2204481929, Spawn)
elseif choice == 2 then
PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_aggro_gf_a30c4f9d.mp3", "To arms!", "", 2291750057, 1030180613, Spawn)
else
PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_aggro_gf_a203c9ec.mp3", "Prepare to face your doom, meddler.", "",  1496819882, 365167432, Spawn)
end
elseif GetGender(NPC) == 1 then
local choice = math.random(1, 3)
if choice == 1 then
PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a30c4f9d.mp3", "To Arms!", "", 1238020980, 748146443, Spawn)
elseif choice == 2 then
PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_583690dc.mp3", "Summon help!  We have invaders!", "",  3340212225,  279643307, Spawn)
else
PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a203c9ec.mp3", "Prepare to face your doom, meddler.", "", 1496819882, 365167432, Spawn)
end
   end
      end 
