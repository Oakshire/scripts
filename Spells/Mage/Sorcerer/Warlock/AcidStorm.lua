--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/AcidStorm.lua
    Script Author  : neatz09
    Script Date    : 2019.10.16 08:10:01
    Script Purpose : 
                   : 
--]]
-- Summons a limited pet to aid the caster
function cast(Caster, Target, PetID)
	local x = GetX(Caster)
	local y = GetY(Caster)
	local z = GetZ(Caster)

	SummonDumbFirePet(Caster, Target, PetID, x, y, z)
end