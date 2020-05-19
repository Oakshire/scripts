--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/PrayerofHealing.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.05 05:12:39
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusAmt, MinVal, MaxVal)
    -- Increases Max Health of group members (AE) by 15.8
    AddSpellBonus(Target, 606, BonusAmt)

    -- Heals group members (AE) for 21 - 25
    --     This effect cannot be critically applied.
    -- The healing of this spell cannot be modified except by direct means
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellHeal("Heal", MinVal, MaxVal)
    else
        SpellHeal("Heal", MinVal)
    end
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
