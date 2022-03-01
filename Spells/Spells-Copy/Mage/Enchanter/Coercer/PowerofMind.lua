--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/PowerofMind.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.14 06:03:42
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Power, Arcane)
    -- Increases Max Power of group members (AE) by 20.8
    AddSpellBonus(Target, 619, Power)

    -- Increases Mitigation of group members (AE) vs arcane damage by 79
    AddSpellBonus(Target, 203, Arcane)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
