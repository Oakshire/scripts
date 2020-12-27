--[[
    Script Name    : Spells/Commoner/DivineBlade.lua
    Script Author  : neatz09
    Script Date    : 2020.04.09 05:04:43
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
SpellDamage(Target, DmgType, (GetLevel(Caster) * 1.08) * MinVal, (GetLevel(Caster) * 1.08) * MaxVal)
end
