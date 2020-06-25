--[[
	Script Name	: SpawnScripts/FrostfangSea/GertaFrostbeard.lua
	Script Purpose	: Gerta Frostbeard <Bartender>
	Script Author	: theFoof
	Script Date	: 2013.09.26
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
		PlayFlavor(NPC, "", "What'll it be, citizen?", "nod", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Sit a spell and have yarself a frothing brew or two!", "nod",0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "I got a drink that'll hit the spot for ya!", "nod", 0, 0, Spawn)
	end
end