--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/Blasphemy.lua
    Script Author  : Dello
    Script Date    : 15/07/2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal, ResistAmt)
    if MaxVal ~= nil and MinVal < MaxVal then
        AddHate(Caster, Target, math.random(MaxVal, MinVal), 1)
    else
        AddHate(Caster, Target, MinVal, 1)
    end

    if target ~= nil then
    Interrupt(Target)
    end

    AddSpellBonus(Target, 202, ResistAmt)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
end