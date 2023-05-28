--[[
    Script Name    : Spells/Commoner/MageArchetype.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.27 02:05:00
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 3, 3) --Agility
    AddSpellBonus(Caster, 1, 2) --Stamina
    AddSpellBonus(Caster, 4, 5) --Intelligence

end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
end