--[[
    Script Name    : Spells/Priest/Cleric/Distract.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.12.01 09:12:33
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, Hate, HealMin, HealMax)
    
    if HealMax ~= nil and HealMin < HealMin then
        ModifyHP(Caster, math.random(HealMin, HealMax))
    else
        ModifyHP(Caster, HealMin)
    end
    
    AddHate(Caster, Target, Hate, 1)

end


