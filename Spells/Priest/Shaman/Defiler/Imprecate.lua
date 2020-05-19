--[[
    Script Name    : Spells/Priest/Shaman/Defiler/Imprecate.lua
    Script Author  : John Adams
    Script Date    : 2013.11.19 09:11:21
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BuffAmt, DmgType, MinDmg, MaxDmg)

    -- Decreases Mitigation of target vs noxious damage by 21
    AddSpellBonus(Target, 202, BuffAmt)

    -- Inflicts 10 - 13 disease damage on target
    if MaxDmg ~= nil and MinDmg < MaxDmg then
        SpellDamage(Target, DmgType, math.random(MinDmg, MaxDmg))
    else
        SpellDamage(Target, DmgType, MinDmg)
    end

end

function remove(Caster, Target, BuffAmt, DmgType, MinDmg, MaxDmg)
    RemoveSpellBonus(Target)
end
