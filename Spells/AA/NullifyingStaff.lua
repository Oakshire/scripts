--[[
    Script Name    : Spells/AA/NullifyingStaff.lua
    Script Author  : neatz09
    Script Date    : 2020.12.11 07:12:57
    Script Purpose : 
                   : 
--]]

-- Inflicts 311 - 519 melee damage on target
-- Decreases Combat Mitigation of target by 4.4.
-- Decreases Mitigation of target vs arcane damage by 1228

function cast(Caster, Target, DmgType, MinVal, MaxVal, CombatMit, Arcane)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
--if LastSpellAttackHit() then
--AddSpellBonus(Target, 0, CombatMit)
--end
		if LastSpellAttackHit() then
			AddSpellBonus(Target, 203, Arcane)
				end
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end