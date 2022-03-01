--[[
    Script Name    : Spells/DragoonsCyclone.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 02:12:44
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Caster has a 4.0% chance of having one of their weapons' auto-attack affect multiple targets they are facing, who are within range of that weapon.

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 639, BonusAmt)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
end