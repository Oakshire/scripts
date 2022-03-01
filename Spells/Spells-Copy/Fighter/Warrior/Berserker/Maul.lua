--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/Maul.lua
    Script Author  : neatz09
    Script Date    : 2020.05.13 10:05:09
    Script Purpose : 
                   : 
--]]

-- Inflicts 32 - 53 melee damage on target
-- Decreases Slashing, Crushing and Piercing of target by 1.5

function cast(Caster, Target, DmgType, MinVal, MaxVal, SkillAmt)
	SpellDamage(Target, DmgType, MinVal, Maxval)
		if LastSpellAttackHit() then
			AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)

			AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)

			AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
end

end