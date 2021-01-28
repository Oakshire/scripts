--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/DarkSiphoning.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 12:10:50
    Script Purpose : 
                   : 
--]]

-- Decreases power of target encounter by 50 - 61 instantly and every 3 seconds
-- Inflicts 117 - 218 poison damage on target encounter instantly and every 3 seconds
-- Heals group members (AE) for 64 - 119 instantly and every 3 seconds
-- Increases power of group members (AE) by 1.3% instantly and every 3 seconds
--     This effect cannot be critically applied.

function cast(Caster, Target, PotDebuffMin, PotDebuffMax, DoTType, DotMin, DotMax, HealMin, HealMax, Pwr)
    SpellHeal("Power", PotDebuffMin, PotDebuffMax)
    SpellDamage(Target, DoTType, DoTMin, DoTMax)
    local group = GetGroup(Caster)
    if group == nil then
        SpellHeal("Heal", HealMin, HealMax, Caster)
        SpellHealPct("Power", HealAmt, false, true, Caster, 1, true)
    else
        for k,v in ipairs(group) do
            SpellHeal("Power", HealMin, HealMax, v)
            SpellHealPct("Power", Pwr, false, true, v, 1, true)
        end
    end
end

function tick(Caster, Target, PotDebuffMin, PotDebuffMax, DoTType, DotMin, DotMax, HealMin, HealMax, Pwr)
    SpellHeal("Power", PotDebuffMin, PotDebuffMax)
    SpellDamage(Target, DoTType, DoTMin, DoTMax)
    local group = GetGroup(Caster)
    if group == nil then
        SpellHeal("Heal", HealMin, HealMax, Caster)
        SpellHealPct("Power", HealAmt, false, true, Caster, 1, true)
    else
        for k,v in ipairs(group) do
            SpellHeal("Power", HealMin, HealMax, v)
            SpellHealPct("Power", Pwr, false, true, v, 1, true)
        end
    end
end