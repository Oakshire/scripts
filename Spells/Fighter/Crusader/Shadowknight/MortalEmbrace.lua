--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/MortalEmbrace.lua
    Script Author  : Dello
    Script Date    : 16/07/2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Chance)
	SetServerControlFlag(Target, 5, 1, 1);
	
	local roll = math.random(1, 100);
	if roll <= Chance then
		ClearHate(Target)
		SendMessage(Caster, "Your feign death succeeded", "yellow")
		SendMessage(Target, "Your feign death succeeded", "yellow")
	else
		SendMessage(Caster, "Your feign death attempt failed", "yellow")
		SendMessage(Target, "Your feign death attempt failed", "yellow")
	end
end

function remove(Caster, Target)
	SetServerControlFlag(Target, 5, 1, 0);
end
