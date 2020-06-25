--[[
	Script Name	: SpawnScripts/Generic/magic_door.lua
	Script Purpose	: Tradeskill doors that open when you come within 10 feet
	Script Author	: John Adams
	Script Date	: 2008.09.27
	Script Notes	: Need to find a way to send Open commands to door widgets
--]]

function spawn(NPC)
  SetPlayerProximityFunction(NPC, 10, "OpenDoor", "CloseDoor")
end

function respawn(NPC)
end

function OpenDoor(NPC, Spawn)
end

function CloseDoor(NPC, Spawn)
end
