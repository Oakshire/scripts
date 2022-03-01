--[[
    Script Name    : Spells/Commoner/UnderfootAttendant.lua
    Script Author  : neatz09
    Script Date    : 2020.11.26 03:11:13
    Script Purpose : 
                   : 
--]]

-- Increases WIS of caster by 2.5
-- Increases INT of caster by 2.5
-- Increases AGI of caster by 2.5
-- Increases STA of caster by 2.5
-- Increases STR of caster by 2.5
-- Summons a pet Underfoot Attendant
-- If follows Brell Serilis
function cast(Caster, Target, PetID, Stats)
	Adjusted = GetLevel(Caster) / Stats
		SummonDeityPet(Caster, PetID, Stats)
		Say(Caster, "deity checks needed and formula need to be fine tuned")
		AddSpellBonus(Target, 0, Adjusted)
		AddSpellBonus(Target, 1, Adjusted)
		AddSpellBonus(Target, 2, Adjusted)
		AddSpellBonus(Target, 3, Adjusted)
		AddSpellBonus(Target, 4, Adjusted)
end

function remove(Caster, Target)
	pet = GetDeityPet(Caster)
		if pet ~= nil then
			DismissPet(pet)
				end
	RemoveSpellBonus(Target)
end