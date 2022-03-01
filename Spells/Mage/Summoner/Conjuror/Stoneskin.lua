--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/Stoneskin.lua
    Script Author  : Neatz09
    Script Date    : 9.5.2020
    Script Purpose : 
                   : 
--]]
function precast(Caster)
    return not IsInCombat(Caster)
end

function cast(Caster, Target, Hate)
	AddWard(0,0,0,0,0,0,0,3)
	AddHate(Caster, Target, Hate, 1)
	Say(Caster, "Should proc 'Settle' for the hate component")
-- Will absorb all damage.  This spell will absorb a total of 3 attacks.
-- Applies Settle.
-- Decreases Threat to targets in Area of Effect by 694 
-- Must be engaged in combat

end

function remove(Caster, Target)
	RemoveWard()
    -- code to remove the spell
end