--[[
    Script Name    : Spells/Commoner/Hydromotion.lua
    Script Author  : neatz09
    Script Date    : 2020.08.14 11:08:54
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Allows caster to walk under water
-- Allows caster to jump under water

function cast(Caster, Target)
    AddControlEffect(Target, 7)
    AddControlEffect(Target, 8)

end


function remove(Caster, Target)
    RemoveControlEffect(Target, 7)
    RemoveControlEffect(Target, 8)

end
