--[[
    Script Name    : Spells/Fighter/Warrior/Anger.lua
    Script Author  : LordPazuzu
    Script Date    : 1/3/2022
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinTaunt, MaxTaunt)
    
    AddHate(Caster, Target, math.random(MinTaunt, MaxTaunt))

    Interrupt(Caster, Target)

end
