--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothlaborer.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.06 07:09:03
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGoblin1.lua")

function spawn(NPC)
    local ID = GetSpawnID(NPC)
    if ID ==3250122 then
    SetInfoStructString(NPC, "action_state", "cooking_idle")
    elseif ID ==3250104 then
    SetInfoStructString(NPC, "action_state", "mining_digging")
    elseif ID ==3250105 then
    SetInfoStructString(NPC, "action_state", "forestry_chopping")
    elseif ID ==3250095 then
    SetInfoStructString(NPC, "action_state", "woodworking_idle")
    end
    
    local Level = GetLevel(NPC)
    local level1 = 3
    local level2 = 4
    local difficulty1 = 6
    local hp1 = 75
    local power1 = 45
    local difficulty2 = 6
    local hp2 = 110
    local power2 = 55
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
    SetInfoStructUInt(NPC, "hp_regen_override", 1)
    SetInfoStructSInt(NPC, "hp_regen", 0)
end

function aggro(NPC,Spawn)
    SpawnSet(NPC, "visual_state", 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end