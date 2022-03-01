--[[
    Script Name    : Spells/Commoner/ArcaneStorm.lua
    Script Author  : neatz09
    Script Date    : 2020.03.28 07:03:42
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal)
SpellDamage(Target, DmgType, (GetLevel(Caster) * 1.08) * MinVal, (GetLevel(Caster) * 1.08) * MaxVal)
end