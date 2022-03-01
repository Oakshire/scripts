--[[
    Script Name    : Spells/Scout/Rogue/CircularStrike.lua
    Script Author  : neatz09
    Script Date    : 2019.10.06 09:10:09
    Script Purpose : 
                   : 
--]]

-- Interrupts targets in Area of Effect
-- Inflicts 38 - 64 melee damage on targets in Area of Effect

function cast(Caster, Target, DmgType, MinVal, MaxVal)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
		if LastSpellAttackHit() then
			Interrupt(Caster, Target)
				end
end