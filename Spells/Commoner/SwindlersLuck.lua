--[[
    Script Name    : Spells/Commoner/SwindlersLuck.lua
    Script Author  : neatz09
    Script Date    : 2020.03.29 05:03:16
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal)
	local Val1 = (GetLevel(Caster) * 1.08) * MinVal
	local Val2 =  (GetLevel(Caster) * 1.08) * MaxVal    
	local SkillAmt = randomFloat(Val1, Val2)
		AddSkillBonus(Caster, GetSkillIDByName("Slashing"), SkillAmt)
		AddSkillBonus(Caster, GetSkillIDByName("Ranged"), SkillAmt)
		AddSkillBonus(Caster, GetSkillIDByName("Piercing"), SkillAmt)
		AddSkillBonus(Caster, GetSkillIDByName("Crushing"), SkillAmt)
end

function randomFloat(Val1, Val2)
return Val1 + math.random()  * (Val2 - Val1);
end

function remove(Caster, Target)
    RemoveSkillBonus(Caster)
end