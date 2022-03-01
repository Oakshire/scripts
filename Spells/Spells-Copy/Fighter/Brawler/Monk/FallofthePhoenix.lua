--[[
    Script Name    : Spells/Fighter/Brawler/Monk/FallofthePhoenix.lua
    Script Author  : Dello
    Script Date    : 15/06/2014
    Script Purpose : 
                   : 
--]]

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
