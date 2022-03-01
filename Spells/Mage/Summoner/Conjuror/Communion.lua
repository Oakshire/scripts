--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/Communion.lua
    Script Author  : neatz09
    Script Date    : 2019.10.26 03:10:22
    Script Purpose : 
                   : 
--]]

-- Summons three powerful planar beings to attack the conjuror's enemies.
function cast(Caster, Target, PetID)
	local x = GetX(Caster)
	local y = GetY(Caster)
	local z = GetZ(Caster)

	SummonDumbFirePet(Caster, Target, PetID, x, y, z)
end