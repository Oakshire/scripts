--[[
    Script Name    : Spells/AA/SwiftCreation.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 02:12:00
    Script Purpose : 
                   : 
--]]

-- Increases speed of caster by 1.0%
-- Increases the amount of progress gained by 2.0%.

function cast(Caster, Target, Speed, Prog)
    AddSpellBonus(Target, 609, Speed)
    AddSpellBonus(Target, 803, Prog)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
