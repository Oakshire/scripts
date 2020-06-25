--[[
	Script Name	: SpawnScripts/FrostfangSea/BorgardGoldenswill.lua
	Script Purpose	: Borgard Goldenswill <Bartender>
	Script Author	: theFoof
	Script Date	: 2013.10.30
	Script Notes	:
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,2)
	if choice == 1 then
		PlayFlavor(NPC, "", "What'll it be, citizen?", "nod", 1689589577, 4560189, Spawn)
	else
		PlayFlavor(NPC, "", "Sit a spell and have yarself a frothing brew or two!", "nod", 1689589577, 4560189, Spawn)
	end
end