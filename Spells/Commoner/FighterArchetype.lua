--[[
    Script Name    : Spells/Commoner/FighterArchetype.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.26 09:05:15
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target)
    AddSpellBonus(Caster, 0, 5) --Strength
    AddSpellBonus(Caster, 1, 3) --Stamina
    AddSpellBonus(Caster, 2, 2) --Agility

end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
end


