--[[
    Script Name    : Spells/Priest/Shaman/Mystic/LamentingSoul.lua
    Script Author  : neatz09
    Script Date    : 2019.09.27 10:09:03
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Decreases DPS of target by 15.9

function cast(Caster, Target, Amt)
    AddSpellBonus(Target, 629, Amt)

end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
