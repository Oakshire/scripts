--[[
    Script Name    : Spells/ReptilianAncestry.lua
    Script Author  : neatz09
    Script Date    : 2020.08.14 03:08:57
    Script Purpose : 
                   : 
--]]

-- Increases Health Regen of caster by 6.0

function cast(Caster, Target, Regen)
--This needs to be based on Clevel    
AddSpellBonus(Target, 600, Regen)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
