--[[
	Script Name	: SpawnScripts/ScaleYard/PlotterNicolai.lua
	Script Purpose	: Plotter Nicolai  
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Too big to eat am I, I'll wager!", "chuckle", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Yes, yes, that will do nicely... err, hello, who are you?", "scheme", 1689589577, 4560189, Spawn)
	end

end

