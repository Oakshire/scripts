--[[
    Script Name    : Spells/AA/LegionnairesSmite.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 02:12:59
    Script Purpose : 
                   : 
--]]

-- Inflicts 337 - 561 magic damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
SpellDamage(Target, DmgType, MinVal, MaxVal)
    Say(Caster, "May need dmg formula")
end