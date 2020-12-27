--[[
    Script Name    : Spells/Priest/Shaman/Defiler/SoulCannibalize.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 11:10:29
    Script Purpose : 
                   : 
--]]
function cast(Caster, Target, DmgType, MinVal, MaxVal, Pwr)
-- Inflicts 23 - 28 divine damage on target instantly and every 3 seconds 
SpellDamage(Target, DmgType, MinVal, MaxVal)  
-- Increases power of caster by 26 instantly and every 3 seconds
SpellHeal(Power, Pwr)
end

function tick(Caster, Target)
-- Inflicts 23 - 28 divine damage on target instantly and every 3 seconds   
SpellDamage(Target, DmgType, MinVal, MaxVal)
-- Increases power of caster by 26 instantly and every 3 seconds
SpellHeal(Power, Pwr)
end

