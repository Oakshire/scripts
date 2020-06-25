--[[
	Script Name	:   SpawnScripts/VerminsSnye/aBloodsaberadept.lua
	Script Purpose	:   Brawler Bently Dialog
	Script Author	:   premierio015
	Script Date 	:   03.05.2020
	Script Notes	:	
--]]

function spawn(NPC, Spawn)

end

function respawn(NPC, Spawn)
         spawn(NPC, Spawn)
end

function hailed(NPC, Spawn)

end

function aggro(NPC, Spawn)
local chance = math.random(1, 100)
if chance <= 10 then
 if GetRace(NPC) == 9 and GetGender(NPC) == 2 then
local choice = math.random(1, 2)
if choice == 1 then
PlayFlavor(NPC, "voiceover/english/optional3/human_bloodsabers/ft/human/human_bloodsabers_1_aggro_gf_34e0cc80.mp3", "Who are you?", "", 1390873745, 3670437167, Spawn)
else
PlayFlavor(NPC, "voiceover/english/optional3/human_bloodsabers/ft/human/human_bloodsabers_1_aggro_gf_b58ea818.mp3", "If they report back to the city, we're finished!", "", 2515206723, 1526385385, Spawn)
end
elseif GetRace(NPC) == 9 and GetGender(NPC) == 1 then
local choice = math.random(1, 3)
if choice == 1 then
PlayFlavor(NPC, "voiceover/english/optional5/human_bloodsabers/ft/human/human_bloodsabers_2_aggro_gm_75242b00.mp3", "Don't waste any time.  Kill them!", "", 1825576990, 2935601811, Spawn)
elseif choice == 2 then
PlayFlavor(NPC, "voiceover/english/optional5/human_bloodsabers/ft/human/human_bloodsabers_2_aggro_gm_34e0cc80.mp3", "Who are you?", "", 3726566794, 1486103830, Spawn)
else
PlayFlavor(NPC, "voiceover/english/optional5/human_bloodsabers/ft/human/human_bloodsabers_1_death_gm_e0b836af.mp3", "Stand your ground!  You're just as dead if you leave.", "", 1931847018, 4291802023, Spawn)
end
elseif GetRace(NPC) == 1 and GetGender(NPC) == 2 then
local choice = math.random(1, 6)
if choice == 1 then
PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_aggro_gf_ded507db.mp3", "More intruders to deal with?  Stop them!", "", 338410258, 2808797910, Spawn)
elseif choice == 2 then
PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_aggro_gf_fb890c79.mp3", "I have no time for meddlers.  Destroy them!", "", 1947039155, 2094447273, Spawn)
elseif choice == 3 then
PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_aggro_gf_8e7390a8.mp3", "Welcome to torment and destruction!", "", 3770648926, 2897017212, Spawn)
elseif choice == 4 then
PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_1_aggro_gf_beacbb30.mp3", "I hope you put your affairs in order.", "", 4241642069, 3957487704, Spawn)
elseif choice == 5 then
PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_2_aggro_gf_fe18133.mp3", "Look what strolled into the spider's web!", "", 2639788240, 46489616, Spawn)
else
PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_2_aggro_gf_10fd87eb.mp3", "There is no escape for you now!", "", 3743520097, 2328340147, Spawn)
end
elseif GetRace(NPC) == 1 and GetGender(NPC) == 1 then
PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_3_aggro_gm_beacbb30.mp3", "I hope you put your affairs in order.", "", 3784715901, 3120155333, Spawn)
end
    end
	end