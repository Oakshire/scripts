--[[
    Script Name    : Spells/Fighter/Brawler/Monk/DragonRage.lua
    Script Author  : neatz09
    Script Date    : 2019.11.14 08:11:01
    Script Purpose : 
                   : 
--]]


-- On a melee hit this spell may cast Dragon Stance on target of attack.  Triggers about 10.0 times per minute. 
--     Increases Threat to target by 1,364 

function cast(Caster, Target, Hate)
	AddProc(Target, 3, 35)
end

function proc(Caster, Target, Type, Hate)
if Type == 3 then	
ProcHate(Caster, Target, Hate, "Dragon Stance")
end

end

function remove(Caster, Target)
	RemoveProc(Target)
end
