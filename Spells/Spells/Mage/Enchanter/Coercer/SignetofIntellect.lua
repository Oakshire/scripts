--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/SignetofIntellect.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.14 06:03:51
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Stats, Avoid)
    -- Increases INT and AGI of group members (AE) by 9.4
    AddSpellBonus(Target, 2, Stats)
    AddSpellBonus(Target, 4, Stats)

    -- Adds 1.4% to base avoidance.
    AddSpellBonus(Target, 696, Avoid)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

