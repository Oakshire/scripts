--[[
    Script Name    : Spells/Scout/Bard/PerformersTalent.lua
    Script Author  : neatz09
    Script Date    : 2020.11.06 05:11:35
    Script Purpose : 
                   : 
--]]

-- Increases AGI of caster by 10.0
-- Increases INT of caster by 25.0

function cast(Caster, Target, Bored, AsFuck)
    AddSpellBonus(Target, 2, Bored)
    AddSpellBonus(Target, 4, AsFuck)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSpellBonus(Target)
end