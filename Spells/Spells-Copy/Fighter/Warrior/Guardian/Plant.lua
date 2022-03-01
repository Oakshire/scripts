--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/Plant.lua
    Script Author  : neatz09
    Script Date    : 2019.11.14 08:11:36
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Forces targets in Area of Effect to change their selected target to caster.
-- Increases Threat to targets in Area of Effect by 44 
-- Prevents targets in Area of Effect from changing targets
function cast(Caster, Target, AddHate)
    AddHate(Caster, Target, AddHate, 1)
    Say(Caster, "Missing forced aggro")

end
