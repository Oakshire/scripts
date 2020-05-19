--[[
    Script Name    : Spells/Commoner/ArcaneFury.lua
    Script Author  : neatz09
    Script Date    : 2020.03.21 04:03:57
    Script Purpose : 
                   : 
--]]

-- Inflicts magic damage on target.

function cast(Caster, Target, DmgType, MinVal, MaxVal)
SpellDamage(Target, DmgType, (GetLevel(Caster) * 1.08) * MinVal, (GetLevel(Caster) * 1.08) * MaxVal)
end

