--[[
    Script Name    : Spells/Commoner/ImpenetrableWill.lua
    Script Author  : neatz09
    Script Date    : 2020.08.14 03:08:36
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Makes caster immune to Stun effects

function cast(Caster, Target)
AddImmunitySpell(4, Target)
end


function remove(Caster, Target)
RemoveImmunitySpell(4, Target)
end
