--[[
    Script Name    : Spells/Priest/Druid/SpiritoftheBat.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 05:01:59
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Agi, Avoid, Regen, MaxPwr)
-- Increases AGI of target by 12.1    
AddSpellBonus(Target, 2, Agi)
-- Adds 0.5% to base avoidance.    
AddSpellBonus(Target, 696, Avoid)
-- Increases Combat Power Regen of target by 6.1    
AddSpellBonus(Target, 605, Regen)
-- Increases Max Power of target by 74.2    
AddSpellBonus(Target, 619, MaxPwr)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

