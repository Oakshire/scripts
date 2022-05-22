--[[
    Script Name    : Spells/Generic/SingleTargetDD.lua
    Script Author  : neatz09
    Script Date    : 2022.05.21 06:05:25
    Script Purpose : Handles single target DD spells
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
end