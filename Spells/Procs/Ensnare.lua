--[[
    Script Name    : Spells/Procs/Ensnare.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.28 10:11:00
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, Snare)
    local Slow = 100.0 - Snare
    SetSpeedMultiplier(Target, Slow)  
        Say(Caster, "Say What?")


end


function remove(Caster, Target)
    SetSpeedMultiplier(Target, 1)
end

