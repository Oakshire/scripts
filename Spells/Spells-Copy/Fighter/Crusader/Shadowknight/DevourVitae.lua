--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/DevourVitae.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 08:10:36
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 97 - 119 disease damage on target
function cast(Caster, Target, DmgType, MinVal, MaxVal, pctHealMin, pctHealMax)
        SpellDamage(Target, DmgType, MinVal, MaxVal)
-- Heals caster for 3.4 - 4.2% of max health
--     This effect cannot be critically applied.
-- The healing of this spell cannot be modified except by direct means
SpellHeal("Heal", GetPCTOfHP(Caster, pctHealMin), GetPCTOfHP(Caster, pctHealMax), Caster, 2)
end
