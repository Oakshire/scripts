--[[
	Script Name	: SpawnScripts/PeatBog/GuardVivian.lua
	Script Purpose	: Guard Vivian <Guard>
	Script Author	: Scatman
	Script Date	: 2009.05.14
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1, 4)
	if choice == 1 then
		PlayFlavor(NPC, "", "I hate working this shift! If the gnolls don't attack now I may die of boredom.", "grumble", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Duty above all else citizen, except honor!", "scold", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Greetings, citizen. I am on guard duty. Should you get into trouble, seek me out.", "attention", 0, 0, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Good day to you citizen, all preserve Queen Antonia.", "salute", 0, 0, Spawn)
	end
end