--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/UnholyStrength.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.11 08:01:04
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusAmt, BonusDmgAmt)
    -- Increases STA of raid and group members (AE) by 9.2
    AddSpellBonus(Target, 1, BonusAmt)

    -- Increase spell damage of group and raid members by 2.82%.
    AddSpellBonus(Target, 700, BonusDmgAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
