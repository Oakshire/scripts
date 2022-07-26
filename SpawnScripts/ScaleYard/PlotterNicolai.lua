--[[
	Script Name		: SpawnScripts/ScaleYard/PlotterNicolai.lua
	Script Purpose	: Plotter Nicolai 
	Script Author	: torsten
	Script Date		: 2022.07.25
	Script Notes	: Auto-Generated Conversation from PacketParser Data
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
		PlayFlavor(NPC, "", "Not one of those rodent-eating reptiles, I hopeses.", "sigh", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Yes, yes, that will do nicely... err, hello, who are you?", "scheme", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Too big to eat am I, I'll wager!", "chuckle", 0, 0, Spawn, 0)
	end
end