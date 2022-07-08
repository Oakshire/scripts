--[[
    Script Name    : SpawnScripts/Antonica/HighwaymanHighMelee.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.07 09:07:17
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 18
    local level2 = 19
    local difficulty1 = 6
    local hp1 = 1290
    local power1 = 410
    local difficulty2 = 6
    local hp2 = 1930
    local power2 = 425
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end

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