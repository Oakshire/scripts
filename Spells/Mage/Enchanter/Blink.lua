--[[
    Script Name    : Spells/Mage/Enchanter/Blink.lua
    Script Author  : LordPazuzu
    Script Date    : 11/29/2022
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Applies Blink on termination.
--     Teleports target to a random location within 10 meters.
-- Decreases Threat to targets in Area of Effect by 554 - 677 

function cast(Caster, Target, HateLow, HateHigh)
    Hate = math.random(HateHigh, HateLow)
    AddHate(Caster, Target, Hate, 1)
    CastSpell(Caster, 5502, GetSpellTier())

end




