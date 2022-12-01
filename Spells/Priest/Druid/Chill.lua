--[[
    Script Name    : Spells/Priest/Druid/Chill.lua
    Script Author  : LordPazuzu
    Script Date    : 11/30/2022
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    SpellDamage(Target, Dmgtype, MinVal, MaxVal)

    if GetRaceBaseType(Target) == 250 then
        SpellDamage(Target, Dmgtype, MinVal, MaxVal)
    end

 
end

