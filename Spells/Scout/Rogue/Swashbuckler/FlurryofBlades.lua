--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/FlurryofBlades.lua
    Script Author  : neatz09
    Script Date    : 2019.10.24 04:10:57
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target)
-- Inflicts 40 - 67 melee damage on target
SpellDamage(Target, DmgType, MinVal, MaxVal, Mit)
-- Inflicts 40 - 67 melee damage on target
if LastSpellAttackHit() then
SpellDamage(Target, DmgType, MinVal, MaxVal)
end
-- Inflicts 40 - 67 melee damage on target
if LastSpellAttackHit() then
SpellDamage(Target, DmgType, MinVal, MaxVal)
end
-- Decreases Mitigation of target vs physical damage by 189
if LastSpellAttackHit() then
    AddSpellBonus(Target, 200, Mit)

end
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
