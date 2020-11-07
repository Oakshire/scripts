--[[
    Script Name    : Spells/Scout/Bard/WaltsSingingBlade.lua
    Script Author  : neatz09
    Script Date    : 2020.11.06 05:11:54
    Script Purpose : 
                   : 
--]]

-- Inflicts 27 - 46 mental damage on target
-- Decreases power of target by 10 - 17

function cast(Caster, Target, DmgType, MinVal, MaxVal, MinPwr, MaxPwr)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
	SpellHeal("Power", MaxPwr, MinPwr, Target)
end