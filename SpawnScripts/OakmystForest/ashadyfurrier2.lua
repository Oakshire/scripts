--[[
    Script Name    : SpawnScripts/OakmystForest/ashadyfurrier2.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.16 06:01:28
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
Action(NPC)
end


function ChooseMovement(NPC)
	local choice = math.random(1, 4)
	if choice == 1 then
		clockwise1(NPC)
	elseif choice == 2 then
		clockwise2(NPC)
	elseif choice == 3 then
               counter_clockwise1(NPC)
	elseif choice == 4 then
               counter_clockwise2(NPC)
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end