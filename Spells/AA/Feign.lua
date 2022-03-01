--[[
    Script Name    : Spells/AA/Feign.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 02:12:53
    Script Purpose : 
                   : 
--]]


-- Feigns Death with 100% chance of success
-- Prevents AOE (except when direct) 

function cast(Caster, Target)
	-- Die animtaion and restricts movement
	SetServerControlFlag(Caster, 5, 1, 1);
		ClearHate(Target, Caster)
		SendMessage(Caster, "Your feign death succeeded", "yellow")
	AddImmunitySpell(7, Target)
end

function remove(Caster, Target)
	RemoveImmunitySpell(7, Target)	
	SetServerControlFlag(Caster, 5, 1, 0);
end