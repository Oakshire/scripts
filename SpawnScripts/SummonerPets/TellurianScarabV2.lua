--[[
    Script Name    : SpawnScripts/SummonerPets/TellurianScarabV2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.22 01:11:05
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    
    --Get pet's level
    local Level = GetLevel(NPC) 
    
    --Set values based on pet spell tier
    local BaseStr = 55 -- Base strength for pet before level modification
    local Dif = 1 --Pet's difficulty tier
    local HPMod = 22.81 -- Pet's hitpoint multipier
    local PWMod = 6.875 -- Pet's power multiplier
    local Sz = 30 -- Pet's size
    
    --Calculate new stats
    local hp = Level * HPMod
    local pw = Level * PWMod
    local newStr = BaseStr + Level
    
    --Set stats
    SpawnSet(NPC, "difficulty", difficulty)
    SpawnSet(NPC, "hp", hp)
    SpawnSet(NPC, "power", pw)
    SpawnSet(NPC, "size", Sz)
    SetInfoStructFloat(pet, "str", newStr)
    SetStrBase(pet, newStr)
    

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end