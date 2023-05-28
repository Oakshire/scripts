--[[
    Script Name    : Spells/Commoner/PriestArcheype.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.27 02:05:20
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 0, 2) --Strength
    AddSpellBonus(Caster, 1, 3) --Stamina
    AddSpellBonus(Caster, 3, 5) --Wisdom

end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
end
