--[[
    Script Name    : Spells/Commoner/SummonSquire.lua
    Script Author  : neatz09
    Script Date    : 2020.02.24 09:02:20
    Script Purpose : 
                   : 
--]]


-- Summons a pet shadowknight squire
function cast(Caster, Target, PetID)
	SummonCosmeticPet(Caster, PetID)

end

function remove(Caster, Target)
	pet = GetCosmeticPet(Caster)
	if pet ~= nil then
		DismissPet(pet)
	end
end