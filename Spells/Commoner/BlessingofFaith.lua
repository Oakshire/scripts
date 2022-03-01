--[[
    Script Name    : Spells/Commoner/BlessingofFaith.lua
    Script Author  : neatz09
    Script Date    : 2020.03.29 06:03:34
    Script Purpose : 
                   : 
--]]

-- Increases power of caster by 30.0% instantly and every 30 seconds
-- This effect cannot be critically applied
function cast(Caster, Target, pctHeal)
SpellHeal("Power", GetPCTOfPower(Caster, pctHeal))
end

function tick(Caster, Target, pctHeal)
SpellHeal("Power", GetPCTOfPower(Caster, pctHeal))
end

