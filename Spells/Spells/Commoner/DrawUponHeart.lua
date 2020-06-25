--[[
    Script Name    : Spells/Commoner/DrawUponHeart.lua
    Script Author  : neatz09
    Script Date    : 2019.10.16 03:10:49
    Script Purpose : 
                   : 
--]]



function cast(Caster, Target, pctHealMin, pctHealMax)
SpellHeal("Power", GetPCTOfPower(Caster, pctHealMin), GetPCTOfPower(Caster, pctHealMax), Caster, 2)
end

function tick(Caster, Target, pctHealMin, pctHealMax)
SpellHeal("Power", GetPCTOfPower(Caster, pctHealMin), GetPCTOfPower(Caster, pctHealMax), Caster, 2)
end


