--[[
    Script Name    : Spells/ChargingintoBattle.lua
    Script Author  : neatz09
    Script Date    : 2020.08.14 11:08:08
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Increases speed of caster by 5.0%

function cast(Caster, Target, Speed)
    AddSpellBonus(Target, 609, Speed)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)

end

