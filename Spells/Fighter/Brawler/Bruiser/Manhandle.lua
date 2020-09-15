--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/Manhandle.lua
    Script Author  : neatz09
    Script Date    : 2020.01.23 06:01:25
    Script Purpose : 
                   : 
--]]

-- On a melee hit this spell may cast Roughhousing on target of attack.  Triggers about 5.0 times per minute. 
--     Inflicts 12 - 20 melee damage on target
--     Increases Threat to target by 430 

function cast(Caster, Target, DmgType, MinVal, MaxVal, Hate)
	AddProc(Target, 3, 5)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal, Hate)
	ProcDamage(Caster, Target, "Roughhousing", DmgType, MinVal, MaxVal)
	ProcHate(Caster, Target, Hate, "Roughhousing")
end

function remove(Caster, Target)
	RemoveProc(Target)
end