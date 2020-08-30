--[[
    Script Name    : Spells/Fighter/Brawler/DevastationFist.lua
    Script Author  : neatz09
    Script Date    : 2019.10.26 02:10:28
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 1795 - 2992 melee damage on target
-- Inflicts 100.0% of max health in crushing damage on target
--     If Target is Standard or weaker

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
    Say(Caster, "max health component not implemented")

end
