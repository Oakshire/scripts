--[[
	Script Name	: SpawnScripts/FrostfangSea/SisterThogMacGilly.lua
	Script Purpose	: Sister Thog MacGilly <Sisterhood of Erollisi>
	Script Author	: theFoof
	Script Date	: 2013.09.16
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,3)
	if choice == 1 then
		PlayFlavor(NPC, "", "I can feel the influence of love here, in a way that I haven't in years!", "nod", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Mithaniel himself was the one to plant the statue of Erollisi here.", "hello", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "We must honor Erollisi, and spread her virtues to the corners of this world.", "hello", 0, 0, Spawn)
	end
end

