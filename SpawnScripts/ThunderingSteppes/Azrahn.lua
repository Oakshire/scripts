--[[
    Script Name    : SpawnScripts/ThunderingSteppes/Azrahn.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 05:06:12
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "I think it's time to evaluate our losses.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "You are in a very dangerous place.  It is only because of skilled fighters such as myself that we were able to establish this foothold in the outer Steppes.", "", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Perhaps a retreat is in order.", "", 0, 0, Spawn, 0)
	end
end