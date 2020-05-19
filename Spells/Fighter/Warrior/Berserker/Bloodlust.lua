--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/Bloodlust.lua
    Script Author  : Dello
    Script Date    : 10/06/2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MaxVal)
    AddSpellBonus(Target, 0, MaxVal)
    AddSpellBonus(Target, 2, MaxVal)
end

function remove(Caster, Target, MaxVal)
    RemoveSpellBonus(Target)
end
