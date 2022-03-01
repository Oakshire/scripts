--[[
    Script Name    : Spells/Commoner/GenericCosmeticPet.lua
    Script Author  : neatz09
    Script Date    : 2020.09.06 05:09:16
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, PetID)
	SummonCosmeticPet(Caster, PetID)

end

function remove(Caster, Target)
	pet = GetCosmeticPet(Caster)
	if pet ~= nil then
		DismissPet(pet)
	end
end