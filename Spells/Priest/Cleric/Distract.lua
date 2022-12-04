--[[
    Script Name    : Spells/Priest/Cleric/Distract.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.12.01 09:12:33
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, Hate, HealMin, HealMax)
    
    SpellHeal("Heal", HealMin, HealMax)
    AddHate(Caster, Target, Hate, 1)

end


