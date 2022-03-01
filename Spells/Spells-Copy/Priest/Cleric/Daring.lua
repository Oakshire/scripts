--[[
    Script Name    : Spells/Priest/Cleric/Daring.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 05:01:48
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Increases STA of group members (AE) by 13.8
-- Increases Mitigation of group members (AE) vs physical damage by 131

function cast(Caster, Target, Sta, Mit)
    AddSpellBonus(Target, 1, Sta)
    AddSpellBonus(Target, 200, Mit)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSpellBonus(Target)

end
