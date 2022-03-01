--[[
    Script Name    : Spells/Commoner/SuffocatingWrath.lua
    Script Author  : neatz09
    Script Date    : 2020.04.10 09:04:05
    Script Purpose : 
                   : 
--]]

-- Deals X - Y magic damage based on CLevel.

function cast(Caster, Target, DmgType, MinVal, MaxVal)
SpellDamage(Target, DmgType, (GetLevel(Caster) * 1.08) * MinVal, (GetLevel(Caster) * 1.08) * MaxVal)
end