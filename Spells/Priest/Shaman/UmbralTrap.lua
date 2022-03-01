--[[
    Script Name    : Spells/Priest/Shaman/UmbralTrap.lua
    Script Author  : neatz09
    Script Date    : 2019.12.14 02:12:52
    Script Purpose : 
                   : 
--]]

-- Decreases DPS of target encounter by 10.6

function cast(Caster, Target, DebuffAmt)
    AddSpellBonus(Target, 629, DebuffAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
