--[[
    Script Name    : Spells/Priest/Druid/Willowskin.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 06:01:53
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Increases Combat Health Regen of group members (AE) by 11.9
-- Increases Mitigation of group members (AE) vs physical damage by 131

function cast(Caster, Target, HP, Mit)
    AddSpellBonus(Target, 604, HP)
    AddSpellBonus(Target, 200, Mit)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

