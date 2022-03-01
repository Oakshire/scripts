--[[
	Script Name	: SpawnScripts/Oakmyst/RinduilFlintflight.lua
	Script Purpose	: Rinduil Flintflight 
	Script Author	: John Adams
	Script Date	: 2009.05.08
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1, 2)
	if choice == 1 then
		PlayFlavor(NPC, "", "It takes years of practice to do what I do.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Can you not see that I'm concentrating?", "", 1689589577, 4560189, Spawn)
	end
end