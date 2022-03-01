--[[
    Script Name    : Spells/FleetFooted.lua
    Script Author  : neatz09
    Script Date    : 2020.12.05 02:12:59
    Script Purpose : 
                   : 
--]]

-- Increases AGI of caster by 2.5

function cast(Caster, Target, Agi)
    AddSpellBonus(Target, 600, Agi)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
end