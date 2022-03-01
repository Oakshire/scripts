--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/AwakenGrave.lua
    Script Author  : neatz09
    Script Date    : 2021.01.09 01:01:00
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