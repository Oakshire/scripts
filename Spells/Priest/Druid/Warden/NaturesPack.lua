--[[
    Script Name    : Spells/Priest/Druid/Warden/NaturesPack.lua
    Script Author  : neatz09
    Script Date    : 2019.11.09 12:11:50
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Summons 4 limited pets to aid the caster
function cast(Caster, Target, PetID)
	local x = GetX(Caster)
	local y = GetY(Caster)
	local z = GetZ(Caster)

	SummonDumbFirePet(Caster, Target, PetID, x, y, z)
	SummonDumbFirePet(Caster, Target, PetID, x, y, z)
	SummonDumbFirePet(Caster, Target, PetID, x, y, z)
SummonDumbFirePet(Caster, Target, PetID, x, y, z)
end