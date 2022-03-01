--[[
	Script Name	: SpawnScripts/Starcrest/GracenDocks.lua
	Script Purpose	: Gracen Docks 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "You should watch the sky at night sometime, it sure does get pretty.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Sometimes fate leaves you guessing, but never forget that the point is buried in there somewhere.", "", 1689589577, 4560189, Spawn)
	else
	end

end