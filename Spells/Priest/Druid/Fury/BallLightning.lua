--[[
    Script Name    : Spells/Priest/Druid/Fury/BallLightning.lua
    Script Author  : neatz09
    Script Date    : 2020.03.24 08:03:55
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