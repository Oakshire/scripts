--[[
	Script Name	: SpawnScripts/GreaterFaydark/afaesoldier.lua
	Script Purpose	: a fae soldier 
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

	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "Watch out, those grobins can be pretty tricky buggers.", "glare", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Thinking happy thoughts won't get you airborne.  It takes practice and strength to soar!", "scold", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Ick... caves.  I hate being trapped underground, it makes it so hard to fly away from danger.", "cringe", 1689589577, 4560189, Spawn)
	else
	end

end

