--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/Rapidity.lua
    Script Author  : neatz09
    Script Date    : 2019.09.23 04:09:35
    Script Purpose : 
                   : 
--]]

-- Increases Haste of target by 23.0

function cast(Caster, Target, Haste)
    AddSpellBonus(Target, 617, Haste)

end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
