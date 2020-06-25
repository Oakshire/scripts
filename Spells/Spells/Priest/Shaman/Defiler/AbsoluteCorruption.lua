--[[
    Script Name    : Spells/Priest/Shaman/Defiler/AbsoluteCorruption.lua
    Script Author  : neatz09
    Script Date    : 2019.10.10 10:10:28
    Script Purpose : 
                   : 
--]]



-- Inflicts 37 - 46 disease damage on target encounter instantly and every 3 seconds
function cast(Caster, Target, DmgType, MinVal, MaxVal, Nox)
-- Interrupts target encounter
 Interrupt(Caster, Target) 
SpellDamage(Target, DmgType, MinVal, MaxVal)  
-- Decreases Mitigation of target encounter vs noxious damage by 414
    AddSpellBonus(Target, 202, Nox)
end
function tick(Caster, Target)
  SpellDamage(Target, DmgType, MinVal, MaxVal)
end

function remove(Caster, Target)  
    RemoveSpellBonus(Target)

end


