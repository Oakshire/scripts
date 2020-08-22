--[[
	Script Name	: SpawnScripts/OutpostOverlord/JonasRollings.lua
	Script Purpose	: Jonas Rollings <Guard>
	Script Author	: John Adams - broken Emote loop fixed Lemmeron
	Script Date	: 2008.09.23 - 22.8.2020
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Maybe I shouldn't have drank so much last night.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "One too many Coagulated Surprises last night is my guess.", "", 1689589577, 4560189, Spawn)
	else
	end

end


function spawn(NPC)
         EmoteLoop(NPC)
end

function respawn(NPC)
         spawn(NPC)
end

function EmoteLoop(NPC)
        Say(NPC, "Your Sacrifice will be remembered! ADD PROXIMITY FUNCTION TO STOP SPAM")
	PlayAnimation(NPC, 10844)
	AddTimer(NPC, 20000, "EmoteLoop")
end