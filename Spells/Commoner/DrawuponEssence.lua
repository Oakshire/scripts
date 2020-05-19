--[[
    Script Name    : Spells/Commoner/DrawuponEssence.lua
    Script Author  : neatz09
    Script Date    : 2019.10.17 08:10:18
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Increases power of caster by 4.6 - 5.6%
function cast(Caster, Target, pctHealMin, pctHealMax)
SpellHeal("Power", GetPCTOfPower(Caster, pctHealMin), GetPCTOfPower(Caster, pctHealMax), Caster, 2)
end

