--[[
    Script Name    : Spells/Scout/Rogue/StreetSmarts.lua
    Script Author  : neatz09
    Script Date    : 2019.12.14 03:12:20
    Script Purpose : 
                   : 
--]]

-- Increases AGI of caster by 10.0
-- Increases STR of caster by 15.0

function cast(Caster, Target)
    AddSpellBonus(Target, 2, Agi)
    AddSpellBonus(Target, 0, Str)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
