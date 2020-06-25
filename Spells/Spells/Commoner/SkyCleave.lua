--[[
    Script Name    : Spells/Commoner/SkyCleave.lua
    Script Author  : neatz09
    Script Date    : 2020.03.22 07:03:36
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
function cast(Caster, Target, DmgType, MinVal, MaxVal)
SpellDamage(Target, DmgType, (GetLevel(Caster) * 1.08) * MinVal, (GetLevel(Caster) * 1.08) * MaxVal)
end