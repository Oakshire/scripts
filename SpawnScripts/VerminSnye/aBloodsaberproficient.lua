--[[
	Script Name	:    SpawnScripts/VerminsSnye/aBloodsaberproficient.lua
	Script Purpose	:   aBloodsaberproficient callouts
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
if GetRace(NPC) == 13 and GetGender(NPC) == 1 then
if not HasLanguage(Spawn, 26) then
local choice = math.random(1, 4)
if choice == 1 then
PlayFlavor(NPC, "voiceover/english/optional3/ratonga_bloodsabers/ft/ratonga/ratonga_bloodsabers_1_garbled_gf_bc265d9b.mp3", "EeeSIP   qweek  MEEerallow  neep", "", 2808549653, 1169200005, Spawn, 26)
elseif choice == 2 then
PlayFlavor(NPC, "voiceover/english/optional3/ratonga_bloodsabers/ft/ratonga/ratonga_bloodsabers_2_garbled_gf_5c77ba46.mp3", "Chee   ava   kirAH   tay!", "", 4059494475, 924700666, Spawn, 26)
elseif choice == 3  then
PlayFlavor(NPC, "voiceover/english/optional3/ratonga_bloodsabers/ft/ratonga/ratonga_bloodsabers_2_garbled_gf_5a81ec49.mp3", "Hekveten plava SU klina", "", 2616917428, 2082993439, Spawn, 26)
else
PlayFlavor(NPC, "voiceover/english/optional3/ratonga_bloodsabers/ft/ratonga/ratonga_bloodsabers_2_garbled_gf_21432a6a.mp3", "TravaHAS merallund kBORrten illanya", "", 4023927210, 2603869112, Spawn, 26)
end
	end
elseif GetRace(NPC) == 13 and GetGender(NPC) == 2 then
if not HasLanguage(Spawn, 26) then
local choice = math.random(1, 4)
if choice == 1 then
PlayFlavor(NPC, "voiceover/english/optional3/ratonga_bloodsabers/ft/ratonga/ratonga_bloodsabers_2_garbled_gm_21432a6a.mp3", "TravaHAS merallund kBORrten illanya", "", 3713734257, 3389826038, Spawn, 26)
elseif choice == 2 then
PlayFlavor(NPC, "voiceover/english/optional3/ratonga_bloodsabers/ft/ratonga/ratonga_bloodsabers_1_garbled_gm_bc265d9b.mp3", "EeeSIP   qweek  MEEerallow  neep", "", 3300712812, 2803842116, Spawn, 26)
elseif choice == 3 then
PlayFlavor(NPC, "voiceover/english/optional3/ratonga_bloodsabers/ft/ratonga/ratonga_bloodsabers_1_garbled_gm_5a81ec49.mp3", "Hekveten plava SU klina", "", 2175556278, 29227183, Spawn, 26)
else
PlayFlavor(NPC, "voiceover/english/optional3/ratonga_bloodsabers/ft/ratonga/ratonga_bloodsabers_2_garbled_gm_5c77ba46.mp3", "Chee   ava   kirAH   tay!", "", 1940215504, 447502824, Spawn, 26)
end
	end

end
	end
end