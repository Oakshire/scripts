--[[
    Script Name    : Spells/Commoner/TLysMinorFamiliar.lua
    Script Author  : neatz09
    Script Date    : 2020.09.07 08:09:27
    Script Purpose : 
                   : 
--]]
local PetID = { '170048', '1080536', '2220225' }

-- Summons a pet cat familiar
function cast(Caster, Target)

	SummonCosmeticPet(Caster, PetID[ math.random( 1, #PetID - 1 ) ] )

end

function remove(Caster, Target)
	pet = GetCosmeticPet(Caster)
	if pet ~= nil then
		DismissPet(pet)
	end
end