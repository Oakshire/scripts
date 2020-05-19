--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/ElementalAspect.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.12 04:03:59
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Power, Resist)
    -- Increases Max Power of group members (AE) by 20.8
    AddSpellBonus(Target, 619, Power)

    -- Increases Mitigation of group members (AE) vs elemental damage by 79
    AddSpellBonus(Target, 201, Resist)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
