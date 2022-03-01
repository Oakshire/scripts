--[[
    Script Name    : Spells/Priest/Shaman/Defiler/FuliginousWhip.lua
    Script Author  : neatz09
    Script Date    : 2019.10.10 09:10:09
    Script Purpose : 
                   : 
--]]


-- Inflicts 56 - 69 disease damage on target instantly and every 4 seconds
function cast(Caster, Target, DmgType, MinVal, MaxVal, Haste)
 SpellDamage(Target, DmgType, MinVal, MaxVal)  
-- Decreases Haste of target by 6.2
    AddSpellBonus(Target, 617, Haste)
end
function tick(Caster, Target)
  SpellDamage(Target, DmgType, MinVal, MaxVal)
end

function remove(Caster, Target)  
    RemoveSpellBonus(Target)
end
