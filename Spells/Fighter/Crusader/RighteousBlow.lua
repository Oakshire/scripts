--[[
    Script Name    : Spells/Fighter/Crusader/RighteousBlow.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 04:11:54
    Script Purpose : 
                   : 
--]]

-- Applies Blessed Strike on termination.
--     Inflicts 23 - 38 divine damage on target
-- Inflicts 9 - 16 divine damage on target

function cast(Caster, Target, Dmg1, Dmg1Min, Dmg1Max, Dmg2, Dmg2Min, Dmg2Max)
	SpellDamage(Target, Dmg2, Dmg2Min, Dmg2Max)
end

function remove(Caster, Target)
	if LastSpellAttackHit() then
		ProcDamage(Caster, Target, "Blessed Strike", Dmg1, Dmg1Min, Dmg1Max)
	end
end