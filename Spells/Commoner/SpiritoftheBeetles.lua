--[[
    Script Name    : Spells/Commoner/SpiritoftheBeetles.lua
    Script Author  : neatz09
    Script Date    : 2020.04.04 11:04:29
    Script Purpose : 
                   : 
--]]

-- Increases power regen of caster by 12.0
function cast(Caster, Target, PwrAmt)
    AddSpellBonus(Target, 603, PwrAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
