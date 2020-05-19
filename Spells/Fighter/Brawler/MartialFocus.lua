--[[
    Script Name    : Spells/Fighter/Brawler/MartialFocus.lua
    Script Author  : Dello
    Script Date    : 2014.07.10 06:07:01
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