--[[
    Script Name    : Spells/Commoner/KingZalakSoulTide.lua
    Script Author  : neatz09
    Script Date    : 2022.05.02 01:05:55
    Script Purpose : handles one of the spells for zalak raid
                   : 
--]]


-- This spell may need additional work(could be a healing component for zalak)
--Set damage type to magic for now, we are missing focus damage type

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
end