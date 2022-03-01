--[[
    Script Name    : Spells/Scout/Bard/Troubador/BriasEntrancingSonnet.lua
    Script Author  : neatz09
    Script Date    : 2020.02.11 07:02:14
    Script Purpose : 
                   : 
--]]

-- Charms target
-- Certain enemies cannot be charmed
-- Does not affect Epic targets
-- Does not affect Epic targets

function cast(Caster, Target)
	if not IsEpic(Target) then
		Charm(Caster, Target)
			end
end

function remove(Caster, Target)
	pet = GetCharmedPet(Caster)
	if pet ~= nil then
		DismissPet(pet)
	end
end