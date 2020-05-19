--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/Vampirism.lua
    Script Author  : neatz09
    Script Date    : 2019.11.09 07:11:29
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Summons a limited pet to aid the caster
function cast(Caster, Target, PetID)
	local x = GetX(Caster)
	local y = GetY(Caster)
	local z = GetZ(Caster)

	SummonDumbFirePet(Caster, Target, PetID, x, y, z)
end