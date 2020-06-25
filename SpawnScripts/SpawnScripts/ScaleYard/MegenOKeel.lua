--[[
	Script Name	: SpawnScripts/ScaleYard/MegenOKeel.lua
	Script Purpose	: Megen O`Keel <Tailor>
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "The stuff's over there.  Just let me know if you find anything you like.", "ponder", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Hello! Can I offer you one of our new lifetime extended warranties for any merchandise you purchase?  ", "nod", 1689589577, 4560189, Spawn)
	else
	end

end

