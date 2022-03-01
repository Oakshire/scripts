--[[
    Script Name    : Spells/Scout/Bard/Dirge/TarvensCripplingCrescendo.lua
    Script Author  : theFoof
    Script Date    : 2013.12.08
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DebuffAmt, DmgType, DmgLow, DmgHigh)
-- Interrupts target
-- Decreases Defense of target
-- Inflicts disease damage on target

    Interrupt(Target)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DebuffAmt)
    SpellDamage(Target, DmgType, DmgLow, DmgHigh)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end

