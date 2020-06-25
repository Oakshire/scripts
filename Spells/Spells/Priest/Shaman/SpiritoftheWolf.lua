--[[
    Script Name    : Spells/Priest/Shaman/SpiritoftheWolf.lua
    Script Author  : neatz09
    Script Date    : 2019.12.14 02:12:07
    Script Purpose : 
                   : 
--]]
-- Increases speed of group members (AE) by 20.0%
-- This effect suspends during combat

function cast(Caster, Target, Speed)
    AddSpellBonus(Target, 609, Speed)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
