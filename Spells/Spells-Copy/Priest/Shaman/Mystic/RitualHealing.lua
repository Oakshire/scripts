--[[
    Script Name    : Spells/Priest/Shaman/Mystic/RitualHealing.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.13 05:12:24
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal, BonusAmt)
    -- Heals target for 40 - 49
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellHeal("Heal", math.random(MinVal, MaxVal))
    else
        SpellHeal("Heal", MinVal)
    end

    -- Increases Max Health of target by 6.3
    AddSpellBonus(Target, 500, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
