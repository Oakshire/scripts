--[[
	Script Name	: Spells/Scout/Predator/Stealth.lua
 	Script Purpose	: Stealth
	Script Author	: theFoof
	Script Date	: 2014.1.16
	Script Notes	:
--]]

function cast(Caster, Target)
    Stealth(1)
    AddSpellBonus(Target, 634, 1)
end

function remove(Caster, Target)
    RemoveStealth()
    RemoveSpellBonus(Target)
end
