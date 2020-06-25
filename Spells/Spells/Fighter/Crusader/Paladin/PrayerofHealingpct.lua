--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/PrayerofHealingpct.lua
    Script Author  : neatz09
    Script Date    : 2019.11.09 06:11:06
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Heals group members (AE) for 6.9 - 8.5% of max health
--     This effect cannot be critically applied.
-- Increases Max Health of group members (AE) by 155.7
-- The healing of this spell cannot be modified except by direct means
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
