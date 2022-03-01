--[[
    Script Name    : Spells/Commoner/ArcaneAegis.lua
    Script Author  : neatz09
    Script Date    : 2020.04.09 09:04:09
    Script Purpose : 
                   : 
--]]

-- Increases Mitigation of group (AE) vs Physical and Arcane damage by x - y based on Clevel

function cast(Caster, Target, MinVal, MaxVal)
	local Val1 = (GetLevel(Caster) * 1.08) * MinVal
	local Val2 =  (GetLevel(Caster) * 1.08) * MaxVal    
	local MitAmt = randomFloat(Val1, Val2)
		AddSpellBonus(Target, 200, MitAmt)
    AddSpellBonus(Target, 203, MitAMt)


end

function randomFloat(Val1, Val2)
	return Val1 + math.random()  * (Val2 - Val1);
end

function remove(Caster, Target)
	RemoveSpellBonus(Target)
end

