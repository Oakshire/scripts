--[[
	Script Name	: SpawnScripts/FrostfangSea/arebelliousrockroller.lua
	Script Purpose	: a rebellious rock roller 
	Script Author	: theFoof
	Script Date	: 2013.11.15
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "Chat")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function Chat(NPC, Spawn)
	local choice = math.random(1,5)
	if choice == 1 then
		PlayFlavor(NPC, "", "Hey, careful! I don't want my rock rolling to get you hurt, hah!", "threaten", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Look out below! Rolling stones are incoming!", "point", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "I don't think the others can appreciate how much skill this takes. Someday...someday maybe we'll be able to rock roll in front of thousands of other dwarves! Can you imagine that?", "orate", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Just give up, you'll never be able to rock roll as fast as me. I am shredding this track!", "threaten", 1689589577, 4560189, Spawn)
	else
		PlayFlavor(NPC, "", "This is such a righteous track you found! Oh, hold your rock for a moment there's someone down there. Interrupting our rock rolling.", "orate", 1689589577, 4560189, Spawn)
	end
end