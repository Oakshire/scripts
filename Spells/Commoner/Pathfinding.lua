--[[
    Script Name    : Spells/Commoner/Pathfinding.lua
    Script Author  : John Adams
    Script Date    : 2013.11.22 10:11:43
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Increases speed of group members (AE) by 16.0%

function cast(Caster, Target, BuffValue)
    AddSpellBonus(Target, 609, BuffValue)
end

function remove(Caster, Target, BuffValue)
    RemoveSpellBonus(Target)
end
