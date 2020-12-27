--[[
    Script Name    : Spells/Commoner/StormofAncients.lua
    Script Author  : neatz09
    Script Date    : 2020.04.10 12:04:55
    Script Purpose : 
                   : 
--]]

-- Encounter AoE Magic Damage X - Y based on Clevel
function cast(Caster, Target, DmgType, MinVal, MaxVal)
SpellDamage(Target, DmgType, (GetLevel(Caster) * 1.08) * MinVal, (GetLevel(Caster) * 1.08) * MaxVal)
end
