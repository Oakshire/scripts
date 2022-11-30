--[[
    Script Name    : Spells/Procs/Blink.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.29 08:11:24
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target)
    local X=GetX(Caster) + math.random(-10, 10)
    local Y=GetY(Caster)
    local Z= GetZ(Caster) + math.random(-10, 10)
    SetPosition(Caster, X,Y,Z)

end
