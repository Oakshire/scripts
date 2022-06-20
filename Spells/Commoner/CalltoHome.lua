--[[
    Script Name    : Spells/Commoner/CalltoHome.lua
    Script Author  : neatz09
    Script Date    : 2019.04.08 12:04:04
    Script Purpose : 
    Updated by     : Devn00b 6/18/2022
--]]
-- Teleports you to your recall point.
function precast(Caster, Target)
    if GetBoundZoneID(Caster) == 0 then
        return false
    end

    if(GetCanGate(Caster) == 1)
    then
        return true   
    else
        SendMessage(Caster, "You cannot use Call to Home from this location.", "red")
        return false
    end

 return true
end


function cast(Caster, Target)
    Gate(Caster)    
end