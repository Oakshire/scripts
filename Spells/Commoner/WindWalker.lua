--[[
    Script Name    : Spells/Commoner/WindWalker.lua
    Script Author  : neatz09
    Script Date    : 2020.03.07 11:03:08
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Increases in-combat movement speed of caster by 50.0%
-- Increases speed of caster by 50.0%
function cast(Caster, Target, Speed)
    AddSpellBonus(Target, 616, Speed)
    AddSpellBonus(Target, 609, Speed)

end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
