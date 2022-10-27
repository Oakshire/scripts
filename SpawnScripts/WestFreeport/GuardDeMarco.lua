--[[
    Script Name    : SpawnScripts/WestFreeport/GuardDeMarco.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 08:10:24
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
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "I'll let Commandant Tor'Val know you feel that way when we get back to the dungeons.", "scold", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "I'm surprised the Overlord allows women in his militia.", "", 0, 0, Spawn, 0)
	end
end