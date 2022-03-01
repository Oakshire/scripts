--[[
    Script Name    : Spells/AA/DazingBash.lua
    Script Author  : neatz09
    Script Date    : 2020.12.11 06:12:46
    Script Purpose : 
                   : 
--]]

-- Inflicts 436 - 727 crushing damage on target
-- Dazes target
--     If Target is not Epic
-- Resistibility increases against targets higher than level 29.

function cast(Caster, Target, DmgType, MinVal, MaxVal)
	Say(Caster, "Resistibility not implemented")
	SpellDamage(Target, DmgType, MinVal, MaxVal)
		if not IsEpic() then
			AddControlEffect(Target, 3)
				end
end

function remove(Caster, Target)
	RemoveControlEffect(Target, 3)
end