--[[
    Script Name    : Spells/Scout/Bard/Troubador/TapEssence.lua
    Script Author  : neatz09
    Script Date    : 2021.01.09 11:01:23
    Script Purpose : 
                   : 
--]]

-- Inflicts 48 - 80 mental damage on target encounter
-- Increases power of group members (AE) by 40 - 66

function cast(Caster, Target, DmgType, MinVal, MaxVal, MinPwr, MaxPwr)
	local group = GetGroup(Caster)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
	if group == nil then
		SpellHeal("Power", MinPwr, MaxPwr, Caster)
	else
		for k,v in ipairs(group) do
			SpellHeal("Power", MinPwr, MaxPwr, v)
		end
	end
end