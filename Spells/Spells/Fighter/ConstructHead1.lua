--[[
    Script Name    : Spells/Fighter/ConstructHead1.lua
    Script Author  : neatz09
    Script Date    : 2019.11.11 09:11:38
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- On any combat or spell hit this spell may cast Mystical Essence on target of attack.  Lasts for 2.0 seconds.  Triggers about 2.0 times per minute. 
--     Stuns target
--     Does not affect Epic targets

function cast(Caster, Target)
Say(Caster, "time " .. os.time(os.date("!*t")))
end
