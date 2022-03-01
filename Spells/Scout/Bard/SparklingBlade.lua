--[[
    Script Name    : Spells/Scout/Bard/SparklingBlade.lua
    Script Author  : neatz09
    Script Date    : 2020.11.06 05:11:43
    Script Purpose : 
                   : 
--]]

-- Inflicts 18 - 31 mental damage on target
-- Inflicts 18 - 31 mental damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
		if LastSpellAttackHit() then
			SpellDamage(Target, DmgType, MinVal, MaxVal)
				end
end