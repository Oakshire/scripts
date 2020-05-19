--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/Distortion.lua
    Script Author  : neatz09
    Script Date    : 2019.04.24 12:04:59
    Script Purpose : 
                   : 
--]]

-- Inflicts 216 - 400 poison damage on target  
function cast(Caster, Target, DmgType, MinVal, MaxVal)  
SpellDamage(Target, DmgType, MinVal, MaxVal, Power)
-- Increases power of caster by 21
SpellHeal(Power, Pwr, nil, Caster)



end