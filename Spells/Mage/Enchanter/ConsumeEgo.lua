--[[
    Script Name    : Spells/Mage/Enchanter/ConsumeEgo.lua
    Script Author  : neatz09
    Script Date    : 2020.11.03 11:11:50
    Script Purpose : 
                   : 
--]]

-- Increases power of caster by 6 instantly and every 4 seconds
function cast(Caster, Target, Pwr)
	SpellHeal("Power", Pwr)
end

function tick(Caster, Target, Pwr)
	SpellHeal("Power", Pwr)
end