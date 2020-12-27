--[[
    Script Name    : Spells/Priest/Cleric/Templar/Awestruck.lua
    Script Author  : neatz09
    Script Date    : 2019.10.15 12:10:54
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Stuns target
-- Does not affect Epic targets
-- Resistibility increases against targets higher than level 29.

function cast(Caster, Target)
if not IsEpic(Target) then
        AddControlEffect(Target, 4)
    Say(Caster, "Resistibility not implemented yet.")
end

end


function remove(Caster, Target)
    RemoveControlEffect(Target, 4)

end


