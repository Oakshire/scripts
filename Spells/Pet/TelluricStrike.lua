--[[
    Script Name    : Spells/Pet/TelluricStrike.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.18 02:11:37
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal, DmgType, DmgLow, DmgHigh)
    if DmgHigh ~= nil and DmgLow < DmgHigh then
        SpellDamage(Target, DmgType, math.random(DmgLow, DmgHigh))
    else
        SpellDamage(Target, DmgType, DmgLow)
        
    end
    AddHate(Caster, Target, math.random(MinVal, MaxVal), 1)
    
end

