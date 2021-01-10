--[[
    Script Name    : Spells/Scout/Predator/Assassin/ParalyzingStrike.lua
    Script Author  : neatz09
    Script Date    : 2020.02.10 06:02:27
    Script Purpose : 
                   : 
--]]

-- Inflicts 188 - 313 melee damage on target
-- Roots target
--     If Target is not Epic
-- 5% chance to dispel when target takes damage
-- Resistibility increases against targets higher than level 29.
function cast(Caster, Target, DmgType, MinVal, MaxVal)
	Say(Caster, "Resistibility not implemented")
		SpellDamage(Target, DmgType, MinVal, MaxVal)
			if LastSpellAttackHit() then
				AddControlEffect(Target, 5)
					end
			if LastSpellAttackHit() then
				AddProc(Target, 15, 5)
					end
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
	if Type == 15 then
		CancelSpell()
end

end

function remove(Caster, Target)
	RemoveProc(Target)
	RemoveControlEffect(Target)
end