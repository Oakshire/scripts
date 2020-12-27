--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/DarkSiphoning.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 12:10:50
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Decreases power of target encounter by 50 - 61 instantly and every 3 seconds
-- Inflicts 117 - 218 poison damage on target encounter instantly and every 3 seconds
-- Heals group members (AE) for 64 - 119 instantly and every 3 seconds
-- Increases power of group members (AE) by 1.3% instantly and every 3 seconds
--     This effect cannot be critically applied.

function cast(Caster, Target, PotDebuffMin, PotDebuffMax, DoTType, DotMin, DotMax, HealMin, HealMax, pctHealMin, PctHealMax)
SpellHeal("Power", PotDebuffMin, PotDebuffMax)
SpellDamage(Target, DoTType, DoTMin, DoTMax)
if group == nil then
    SpellHeal("Heal", HealMin, HealMax,Caster)
else
    for k,v in ipairs(GetGroup(Spawn)) do
        SpellHeal("Power", HealMin, HealMax, v)
    end
end

if group == nil then
    SpellHeal("Heal", pctHealMin, pctHealMax, Caster)
else
    for k,v in ipairs(GetGroup(Spawn)) do
        SpellHeal("Heal", GetPCTOfHP(Caster, pctHealMin), SpellHeal("Heal", GetPCTOfHP(Caster, pctHealMax), v, 2, 1))
    end
end

end
function tick(Caster, Target, PotDebuffMin, PotDebuffMax, DoTType, DotMin, DotMax, HealMin, HealMax, pctHealMin, pctHealMax)
SpellHeal("Power", PotDebuffMin, PotDebuffMax)
SpellDamage(Target, DoTType, DoTMin, DoTMax)
if group == nil then
    SpellHeal("Heal", HealMin, HealMax,Caster)
else
    for k,v in ipairs(GetGroup(Spawn)) do
        SpellHeal("Power", HealMin, HealMax, v)
    end
end

if group == nil then
    SpellHeal("Heal", pctHealMin, pctHealMax, Caster)
else
    for k,v in ipairs(GetGroup(Spawn)) do
        SpellHeal("Heal", GetPCTOfHP(Caster, pctHealMin), SpellHeal("Heal", GetPCTOfHP(Caster, pctHealMax), v, 2, 1))
    end
end

end
