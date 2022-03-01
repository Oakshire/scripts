--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/Righteousness.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.05 09:12:22
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, minVal, maxVal, mitVal)
    -- Increases Threat to target encounter by 125 - 153 
    if maxVal ~= nil and minVal < maxVal then
        AddHate(Caster, Target, math.random(minVal, maxVal))
    else
        AddHate(Caster, Target, minVal)
    end

    -- Decreases Mitigation of target encounter vs arcane damage by 104
    AddSpellBonus(Target, 203, mitVal)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
