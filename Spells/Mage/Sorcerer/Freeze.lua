--[[
    Script Name    : Spells/Mage/Sorcerer/Freeze.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 02:11:24
    Script Purpose : 
                   : 
--]]

-- Inflicts 133 - 162 cold damage on target
-- Stuns target
--     If Target is not Epic
-- Resistibility increases against targets higher than level 29.

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Say(Caster, "Resistability not implemented.")
	if not IsEpic() then
		AddControlEffect(Target, 4)
			end
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 4)
end