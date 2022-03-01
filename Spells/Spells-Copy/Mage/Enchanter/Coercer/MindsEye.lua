--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/MindsEye.lua
    Script Author  : neatz09
    Script Date    : 2019.10.20 09:10:41
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Increases Combat Power Regen of group members (AE) by 6.3

function cast(Caster, Target, Pwr)
    AddSpellBonus(Target, 605, Pwr)

end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
