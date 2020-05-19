--[[
    Script Name    : Spells/Scout/Bard/Troubadour/Allegretto.lua
    Script Author  : Zcoretri
    Script Date    : 4.April.2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, AttackAmt)
    -- Increases Attack Speed of group members (AE)
    AddSpellBonus(Target, 617, AttackAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

