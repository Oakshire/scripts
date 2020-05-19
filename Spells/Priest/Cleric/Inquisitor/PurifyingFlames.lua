--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/PurifyingFlames.lua
    Script Author  : neatz09
    Script Date    : 2019.10.15 09:10:35
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DoTType, MinVal, MaxVal, BonusAmt)
-- Inflicts 33 - 40 heat damage on target instantly and every 4 seconds     
SpellDamage(Target, DoTType, MinVal, MaxVal)
-- Decreases Mitigation of target vs arcane damage by 207
    AddSpellBonus(Target, 203, BonusAmt)

end

function tick(Caster, Target, DoTType, MinVal, MaxVal)
 SpellDamage(Target, DoTType, MinVal, MaxVal)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
