--[[
    Script Name    : Spells/Commoner/ArdentChallenge.lua
    Script Author  : neatz09
    Script Date    : 2020.04.02 12:04:03
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal)
	local Val1 = (GetLevel(Caster) * 1.08) * MinVal
	local Val2 =  (GetLevel(Caster) * 1.08) * MaxVal    
	local StatAmt = randomFloat(Val1, Val2)
		AddSpellBonus(Target, 0, StatAmt)
                AddSpellBonus(Target, 2, StatAmt)
end

function randomFloat(Val1, Val2)
	return Val1 + math.random()  * (Val2 - Val1);
end

function remove(Caster, Target)
	RemoveSpellBonus(Target)
end
