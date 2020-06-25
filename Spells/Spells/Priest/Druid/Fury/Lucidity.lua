--[[
    Script Name    : Spells/Priest/Druid/Fury/Lucidity.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.14 02:01:37
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, StaAmt, IntAmt)
    -- Increases STA of target by 2.6
    AddSpellBonus(Target, 1, StaAmt)

    -- Increases INT of target by 8.9
    AddSpellBonus(Target, 4, IntAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
