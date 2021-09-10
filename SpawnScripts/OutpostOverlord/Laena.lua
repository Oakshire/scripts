--[[
	Script Name	: SpawnScripts/OutpostOverlord/Laena.lua
	Script Purpose	: Laena 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
    Modified Script Notes : Added SpawnAccess. Added support for In the Name Of Honor.
    Modified by     : premierio015, Neveruary
--]]

local TheTunarianPlot = 491
local NameOfHonor = 490

function spawn(NPC)
   AddSpawnAccess(NPC, NPC)
   SetPlayerProximityFunction(NPC, 20, "SpawnAccess", "SpawnAccess")
end

function SpawnAccess(NPC, Spawn)
  if GetQuestStep(Spawn, TheTunarianPlot) == 6 or GetQuestStep(Spawn, NameOfHonor) == 5 then
   AddSpawnAccess(NPC, Spawn)
  else
  RemoveSpawnAccess(NPC, Spawn)
  end
end

function aggro(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)
	if choice == 1 then
		PlayFlavor(NPC, "", "For the Queen!", "combat_enter", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Die, Freeport scum!", "threaten", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "To the gray fields with them!", "", 1689589577, 4560189, Spawn)
	end
end

