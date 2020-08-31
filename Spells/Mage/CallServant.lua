--[[
    Script Name    : Spells/Mage/CallServant.lua
    Script Author  : neatz09
    Script Date    : 2020.05.17 10:05:37
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Teleports target to caster

function cast(Caster, Target)
local pet = GetPet(Caster)
if pet ~= nil then
    local x = GetX(pet)
    local y = GetY(pet)
    local z = GetZ(pet)

SpawnSet(pet, "x", GetX(Caster))
SpawnSet(pet, "y", GetY(Caster))
SpawnSet(pet, "z", GetZ(Caster))
end
end
