--[[
    Script Name    : SpawnScripts/WestFreeport/ManatArmsFaustus.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 08:10:48
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
		PlayFlavor(NPC, "", "Arcantos, where did they station Commandant Placida? She is gorgeous.", "taunt", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Chin up Arcantos, you'll lead a mission one day... Ha!", "taunt", 0, 0, Spawn, 0)
	end
end