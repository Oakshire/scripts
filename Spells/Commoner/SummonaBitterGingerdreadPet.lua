--[[
    Script Name    : Spells/Commoner/SummonaBitterGingerdreadPet.lua
    Script Author  : TyroneSWG
    Script Date    : 2019.01.16 02:01:04
    Script Purpose : 
                   : 
--]]
function cast(Caster, Target)
	SummonCosmeticPet(Caster, 20314)

end

function remove(Caster, Target)
	pet = GetCosmeticPet(Caster)
	if pet ~= nil then
		DismissPet(pet)
	end
end