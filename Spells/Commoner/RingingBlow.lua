--[[
    Script Name    : Spells/Commoner/RingingBlow.lua
    Script Author  : neatz09
    Script Date    : 2020.03.29 01:03:33
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
SpellDamage(Target, DmgType, (GetLevel(Caster) * 1.08) * MinVal, (GetLevel(Caster) * 1.08) * MaxVal)
end

