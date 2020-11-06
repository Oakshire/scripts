--[[
    Script Name    : Spells/Mage/Sorcerer/TongueTwist.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 02:11:13
    Script Purpose : 
                   : 
--]]

-- Interrupts target
-- Inflicts 4 - 6 magic damage on target
-- Stifles target
--     If Target is not Epic
-- Resistibility increases against targets higher than level 29.

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Say(Caster, "Resistibility not implemented.")
    Interrupt(Caster, Target)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
		if not IsEpic() then
			AddControlEffect(Target, 2)
				end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 2)
end