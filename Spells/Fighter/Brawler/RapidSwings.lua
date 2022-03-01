--[[
    Script Name    : Spells/Fighter/Brawler/RapidSwings.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 05:11:48
    Script Purpose : 
                   : 
--]]
-- Inflicts 19 - 32 melee damage on target
-- Inflicts 19 - 32 melee damage on target
-- Inflicts 19 - 32 melee damage on target
-- Inflicts 19 - 32 melee damage on target
-- If facing target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Say(Caster, "Facing Target not imple,emented")
	SpellDamage(Target, DmgType, MinVal, MaxVal)
		if LastSpellAttackHit() then
			SpellDamage(Target, DmgType, MinVal, MaxVal)
			SpellDamage(Target, DmgType, MinVal, MaxVal)
			SpellDamage(Target, DmgType, MinVal, MaxVal)
				end
end


