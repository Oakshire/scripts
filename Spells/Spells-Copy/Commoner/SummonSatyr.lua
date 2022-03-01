--[[
    Script Name    : Spells/Commoner/SummonSatyr.lua
    Script Author  : TyroneSWG
    Script Date    : 2020.06.15 11:06:37
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Summons a pet Dancing Satyr
function cast(Caster, Target)
	SummonCosmeticPet(Caster, 6538)

end

function remove(Caster, Target)
	pet = GetCosmeticPet(Caster)
	if pet ~= nil then
		DismissPet(pet)
	end
end