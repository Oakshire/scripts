--[[
    Script Name    : Spells/Priest/Cleric/AdmonishingSmite.lua
    Script Author  : neatz09
    Script Date    : 2019.08.05 07:08:53
    Script Purpose : 
                   : 
--]]

-- Inflicts 25 - 31 divine damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Say(Caster, "Resistability and hostile dispell should be hardcoded.. not implemented.")
	if not IsEpic() then
		AddControlEffect(Target, 3)
			end	
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 3)
end