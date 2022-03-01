--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/ActofWar.lua
    Script Author  : neatz09
    Script Date    : 2019.10.26 11:10:55
    Script Purpose : 
                   : 
--]]


-- On any combat or spell hit this spell may cast Strike of Faith on target of attack.  Triggers about 1.0 times per minute. 
--     Inflicts 83 divine damage on target

function cast(Caster, Target, DmgType, Dmg)
	AddProc(Target, 1, 1.7, nil, 1)
end

function proc(Caster, Target, Type, DmgType, Dmg)
	ProcDamage(Caster, Target, "Strike of Faith", DmgType, Dmg)
end

function remove(Caster, Target)
	RemoveProc(Target)
end