--[[
	Script Name		: SpawnScripts/TheCityofFreeport/JeththeSpy.lua
	Script Purpose	: Jeth the Spy
	Script Author	: cynnar
	Script Date		: 2023.04.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local QuellingTheRebellion = 5807

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange", Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    if HasQuest(Spawn, QuellingTheRebellion) and GetQuestStep(Spawn, QuellingTheRebellion) == 1 then
        PlayFlavor(NPC, "", "Drat! Found out! Well, this won't be the end - there are others!", "", 0, 0, Spawn, 0)
    end
end

function LeaveRange(NPC, Spawn)

end
