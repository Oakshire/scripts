--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/RoaringFlames.lua
    Script Author  : neatz09
    Script Date    : 2019.10.26 01:10:58
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