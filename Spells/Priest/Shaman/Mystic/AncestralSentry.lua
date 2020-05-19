--[[
    Script Name    : Spells/Priest/Shaman/Mystic/AncestralSentry.lua
    Script Author  : neatz09
    Script Date    : 2019.11.04 10:11:26
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