--[[
    Script Name    : Spells/Mage/Enchanter/DauntingGaze.lua
    Script Author  : neatz09
    Script Date    : 2020.11.03 11:11:26
    Script Purpose : 
                   : 
--]]

-- Decreases power of target by 79 - 97
-- Stuns target
--     If Target is not Epic
-- Resistibility increases against targets higher than level 29.

function cast(Caster, Target, PwrMax, PwrMin)
	local Pwr = math.random(PwrMin, PwrMax)
	Say(Caster, "Resistability not implemented")
	if not IsEpic(Target) then 
		AddControlEffect(Target, 4)
			end
	    ModifyPower(Target, Pwr)
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 4)
end