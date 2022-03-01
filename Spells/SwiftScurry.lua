--[[
    Script Name    : Spells/SwiftScurry.lua
    Script Author  : neatz09
    Script Date    : 2020.08.14 03:08:33
    Script Purpose : 
                   : 
--]]

-- Increases speed of caster by 5.0%

function cast(Caster, Target)
    AddSpellBonus(Target, 609, 5)

end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
