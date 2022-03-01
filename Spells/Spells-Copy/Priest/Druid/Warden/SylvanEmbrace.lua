--[[
    Script Name    : Spells/Priest/Druid/Warden/SylvanEmbrace.lua
    Script Author  : neatz09
    Script Date    : 2019.11.09 01:11:53
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Heals group members (AE) for 428 - 524
-- Heals group members (AE) for 176 - 216 every 2 seconds

function cast(Caster, Target, MinHeal, MaxHeal, HotMin, HotMax)
SpellHeal("Heal", MinHeal, MaxHeal)
end


function tick(Caster, Target, MinHeal, MaxHeal, HotMin, HotMax)
SpellHeal("Heal", HotMin, HotMax)
end
