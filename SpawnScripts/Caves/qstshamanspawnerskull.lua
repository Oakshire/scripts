--[[
    Script Name    : SpawnScripts/Caves/qstshamanspawnerskull.lua
    Script Author  : Shatou
    Script Date    : 2020.01.05 02:01:54
    Script Purpose : 
                   : 
--]]

local HIGH_SHAMAN_OF_THE_ROCKPAW_QUEST_ID = 495
local STAFF_OF_SUMMONING_ID = 13583

function spawn(NPC)
end

function casted_on(NPC, Spawn, Message)

	if HasQuest(Spawn, HIGH_SHAMAN_OF_THE_ROCKPAW_QUEST_ID) then
		if HasItem(Spawn, STAFF_OF_SUMMONING_ID) then
			if Message == "Place Staff of Summoning" then
				SpawnMob(GetZone(NPC), 1970058, true, 27.49, 19.82, -126.11, 180)
				RemoveItem(Spawn, STAFF_OF_SUMMONING_ID)
			end
		end
	end
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

