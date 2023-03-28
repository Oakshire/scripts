--[[
    Script Name    : Spells/Scout/Predator/HuntersInstinct.lua
    Script Author  : neatz09
    Script Date    : 2020.11.04 12:11:48
    Script Purpose : 
                   : 
--]]

-- Increases AGI of caster by 8.7
-- Increases DPS of caster by 19.0

function cast(Caster, Target, Agi, Dps)
    AddSpellBonus(Caster, 2, Agi)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end