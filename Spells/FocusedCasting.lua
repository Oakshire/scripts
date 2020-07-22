--[[
    Script Name    : Spells/FocusedCasting.lua
    Script Author  : neatz09
    Script Date    : 2020.07.21 08:07:15
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Increases Crit Chance of caster by 100.0
-- Prevents caster from being Interrupted
-- Increases Crit Bonus by 50% of the caster's base Crit Bonus
-- Increases Potency by 25% of the caster's base Crit Bonus

function cast(Caster, Target, Chance, Bonus)
    AddSpellBonus(Target, 654, Chance)
    AddSpellBonus(Target, 657, Bonus)
    Say(Caster, "cant be interrupted + fervor not implemented")

end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end