--[[
    Script Name    : Spells/Commoner/TrickstersGrasp.lua
    Script Author  : neatz09
    Script Date    : 2020.04.12 12:04:12
    Script Purpose : 
                   : 
--]]

-- Deals x - y damage on target instantly and every 6 seconds.
function cast(Caster, Target, DmgType, MinVal, MaxVal)
SpellDamage(Target, DmgType, (GetLevel(Caster) * 1.08) * MinVal, (GetLevel(Caster) * 1.08) * MaxVal)
end


function tick(Caster, Target, DmgType, MinVal, MaxVal)
SpellDamage(Target, DmgType, (GetLevel(Caster) * 1.08) * MinVal, (GetLevel(Caster) * 1.08) * MaxVal)
end


