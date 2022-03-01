--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/SiphonStrength.lua
    Script Author  : Dello
    Script Date    : 18/07/2014 (Updated 9/23/19 by neatz09)
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, DebuffAmt, BuffAmt)
--Debuff
    AddSpellBonus(Target, 0, DebuffAmt)
    AddSpellBonus(Target, 4, DebuffAmt)
--Buff Amt
    AddSpellBonus(Caster, 0, BuffAmt)
    AddSpellBonus(Caster, 4, BuffAmt)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSpellBonus(Caster)

end

