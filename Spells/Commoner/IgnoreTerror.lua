--[[
    Script Name    : Spells/Commoner/IgnoreTerror.lua
    Script Author  : neatz09
    Script Date    : 2020.08.14 11:08:48
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Makes caster immune to Fear effects
function cast(Caster, Target)
AddImmunitySpell(6, Target)
end


function remove(Caster, Target)
RemoveImmunitySpell(6, Target)
end
