--[[
    Script Name    : Spells/Priest/Shaman/Defiler/Putrefy.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.13 03:03:42
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusAmt, DoTType, DmgVal)
    -- Decreases WIS of target by 8.0
    AddSpellBonus(Target, 3, BonusAmt)

    -- Inflicts 6 poison damage on target instantly and every 4 seconds
    SpellDamage(Target, DoTType, DmgVal)

end

function tick(Caster, Target, BonusAmt, DoTType, DmgVal)
    SpellDamage(Target, DoTType, DmgVal)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
