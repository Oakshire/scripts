--[[
    Script Name    : Spells/Priest/Shaman/Mystic/Transcendence.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.13 07:12:36
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal, BonusAmt)
    -- Heals group members (AE) for 125 - 153
    if MaxVal ~= nil and MinVal < MaxVal then
        ModifyHP(Target, math.random(MinVal, MaxVal))
    else
        ModifyHP(Target, MinVal)
    end

    -- Increases Max Health of group members (AE) by 15.8
    AddSpellBonus(Target, 500, BonusAmt)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
