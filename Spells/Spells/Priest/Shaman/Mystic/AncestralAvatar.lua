--[[
    Script Name    : Spells/Priest/Shaman/Mystic/AncestralAvatar.lua
    Script Author  : neatz09
    Script Date    : 2019.11.04 09:11:00
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Stat, Avoid)
-- Increases AGI, STR and STA of target by 54.4
    AddSpellBonus(Target, 0, Stat)
    AddSpellBonus(Target, 1, Stat)
    AddSpellBonus(Target, 2, Stat)
-- Adds 1.3% to base avoidance.
    AddSpellBonus(Target, 696, Avoid)

end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
