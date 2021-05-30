--[[
    Script Name    : Spells/Fighter/Brawler/FeignDeath.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.13 07:01:36
    Script Purpose : 
                   : 
--]]

-- Feigns Death with 58% chance of success
function cast(Caster, Target, Chance)
	-- Die animtaion and restricts movement
	SetServerControlFlag(Caster, 5, 1, 1);
	
	local roll = math.random(1, 100);
	if roll <= Chance then
		ClearHate(Target, Caster)
		SendMessage(Caster, "Your feign death succeeded", "yellow")
	else
		SendMessage(Caster, "Your feign death attempt failed", "yellow")
	end
end

function remove(Caster, Target)
	SetServerControlFlag(Caster, 5, 1, 0);
end