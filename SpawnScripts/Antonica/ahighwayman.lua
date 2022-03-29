--[[
    Script Name    : SpawnScripts/Antonica/ahighwayman.lua
    Script Author  : Premierio015
    Script Date    : 2022.03.28 07:03:37
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function death(NPC, Spawn)
if GetRace(NPC) == 6 and GetGender(NPC) == 1 then -- HALF ELF MALE
PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_death_gm_610c650e.mp3", "You must flee!  I'll try to hold them.", "", 3580386891, 3023137994, Spawn)
end
end

function aggro(NPC, Spawn)
if GetRace(NPC) == 6 and GetGender(NPC) == 1 then -- HALF ELF MALE
PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_aggro_gm_13a3055.mp3", "Summon help, intruders have arrived!", "", 262436067, 4127133618, Spawn)   
end
end

function respawn(NPC)
	spawn(NPC)
end