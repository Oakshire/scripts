--[[
    Script Name    : Spells/Commoner/DivineTrickery.lua
    Script Author  : neatz09
    Script Date    : 2020.04.12 06:04:32
    Script Purpose : 
                   : 
--]]

-- Deals x - y damage to target based on CLevel
function cast(Caster, Target, DmgType, MinVal, MaxVal)
SpellDamage(Target, DmgType, (GetLevel(Caster) * 1.08) * MinVal, (GetLevel(Caster) * 1.08) * MaxVal)
end