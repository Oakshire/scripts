--[[
    Script Name    : SpawnScripts/Stonestair/Batarra.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.11 11:10:39
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
		PlayFlavor(NPC, "", "Mrrrrowwwwn    lahterrrr    avac'swarrrr ", "", 0, 0, Spawn, 13)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Prrrahda kelvahrrrmo", "", 0, 0, Spawn, 13)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Harrrrvek   turrrrroulet   purrommo ", "", 0, 0, Spawn, 13)
	end
end