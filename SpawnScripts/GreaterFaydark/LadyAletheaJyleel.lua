--[[
	Script Name	: SpawnScripts/GreaterFaydark/LadyAletheaJyleel.lua
	Script Purpose	: Lady Alethea Jyleel 
	Script Author	: John Adams
	Script Date	: 2009.03.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "", "The boughs of the great trees shall keep us safe from the dangers below.", "converse_female06", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "The great branches of Kelethin sway a graceful dance. Such a performance keeps the city safe.", "flourish", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "These fae are kind creatures of magic. The Feir'Dal owe them much.", "", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "May the blessings of Marr protect you on your journeys within the Faydark.", "fullcurtsey", 1689589577, 4560189, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "", "Beware the edges of the city. Many have plummeted to their death when not watching their footsteps.", "", 1689589577, 4560189, Spawn)
	else
	end

end

