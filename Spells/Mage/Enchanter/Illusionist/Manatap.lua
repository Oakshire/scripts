--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/Manatap.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 03:10:32
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, HealType, EncPwr, GrpPwr)
	local group = GetGroup(Caster)
	SpellHeal("Power", EncPwr)
	if group == nil then
		SpellHeal("Power", GrpPwr, 0, Caster)
	else
		for k,v in ipairs(group) do
			SpellHeal("Power", GrpPwr, 0, v)
		end
	end
end

function tick(Caster, Target, HealType, EncPwr, GrpPwr)
-- Decreases power of target encounter by 63 instantly and every 4 seconds
-- Increases power of group members (AE) by 47 instantly and every 4 seconds
	local group = GetGroup(Caster)
	SpellHeal("Power", EncPower)
	if group == nil then
		SpellHeal("Power", GrpPwr, 0, Caster)
	else
		for k,v in ipairs(group) do
			SpellHeal("Power", GrpPwr, 0, v)
		end
	end
end