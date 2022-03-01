--[[
    Script Name    : Spells/Mage/Summoner/EssenceShift.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 02:11:14
    Script Purpose : 
                   : 
--]]

-- Inflicts 111 magic damage on target
-- Increases power of caster by 29

function cast(Caster, Target, DmgType, MinVal, Pwr)
	SpellDamage(Target, DmgType, MinVal)
	SpellHeal("Power", Pwr, Pwr, Caster)
end