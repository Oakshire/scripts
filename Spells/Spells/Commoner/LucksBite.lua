--[[
    Script Name    : Spells/Commoner/LucksBite.lua
    Script Author  : neatz09
    Script Date    : 2020.04.02 12:04:47
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
SpellDamage(Target, DmgType, (GetLevel(Caster) * 1.08) * MinVal, (GetLevel(Caster) * 1.08) * MaxVal)
end
