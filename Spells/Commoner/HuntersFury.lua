--[[
    Script Name    : Spells/Commoner/HuntersFury.lua
    Script Author  : neatz09
    Script Date    : 2020.08.14 04:08:01
    Script Purpose : 
                   : 
--]]

-- Increases in-combat movement speed of caster by 50.0%
-- Increases speed of caster by 50.0%

function cast(Caster, Target, Speed)
    AddSpellBonus(Target, 616, Speed)
    AddSpellBonus(Target, 609, Speed)

end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
