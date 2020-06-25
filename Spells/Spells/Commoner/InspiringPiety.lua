--[[
    Script Name    : Spells/Commoner/InspiringPiety.lua
    Script Author  : neatz09
    Script Date    : 2020.03.29 03:03:22
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, MinFocus, MaxFocus)
local Val1 = (GetLevel(Caster) * 1.08) * MinFocus
local Val2 =  (GetLevel(Caster) * 1.08) * MaxFocus    
local FocusAmt = randomFloat(Val1, Val2)
	AddSkillBonus(Caster, GetSkillIDByName("Focus"), FocusAmt)
	SpellDamage(Target, DmgType, (GetLevel(Caster) * 1.08) * MinVal, (GetLevel(Caster) * 1.08) * MaxVal)
end

function randomFloat(Val1, Val2)
	return Val1 + math.random()  * (Val2 - Val1);
end

function remove(Caster, Target)
	RemoveSkillBonus(Caster)
end