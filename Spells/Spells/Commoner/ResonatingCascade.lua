--[[
    Script Name    : Spells/Commoner/ResonatingCascade.lua
    Script Author  : neatz09
    Script Date    : 2020.04.12 01:04:55
    Script Purpose : 
                   : 
--]]

-- increases power of group members by x instantly and every 12 seconds

function cast(Caster, Target, PowerMin)
local PowerAmt = (GetLevel(Caster) * 1.08) * PowerMin

SpellHeal("Power", PowerAmt)
end


function tick(Caster, Target)
SpellHeal("Power", PowerAmt)
end
