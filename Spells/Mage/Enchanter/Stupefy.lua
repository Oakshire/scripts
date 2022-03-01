--[[
    Script Name    : Spells/Mage/Enchanter/Stupefy.lua
    Script Author  : neatz09
    Script Date    : 2020.11.03 11:11:49
    Script Purpose : 
                   : 
--]]

-- Decreases Threat to target by 590 
-- Stuns target
--     If Target is not Epic
-- Resistibility increases against targets higher than level 29.

function cast(Caster, Target, Hate)
    Say(Caster, "Resistability not implemented.")
	if not IsEpic(Target) then 
		AddControlEffect(Target, 4)
			end
	AddHate(Caster, Target, Hate, 1)
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 4)
end