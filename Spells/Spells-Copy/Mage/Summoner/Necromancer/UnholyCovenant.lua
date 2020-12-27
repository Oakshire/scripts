--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/UnholyCovenant.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.07 10:12:59
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, powerBonus, mitBonus)
    -- Increases Max Power of group members (AE) by 20.8
    AddSpellBonus(Target, 619, powerBonus)

    -- Increases Mitigation of group members (AE) vs noxious damage by 79
    AddSpellBonus(Target, 202, mitBonus)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
