--[[
    Script Name    : SpawnScripts/OutpostOverlord/ATunarianGravedigger.lua
    Script Author  : Lemmeron
    Script Date    : 2020.08.21 09:08:45
    Script Purpose : To Spawn the corresponding Fallen Tunarian when each gravedigger is killed
                   : 
--]]

local DiggersID = 2780008
local Digger1loc = 394728
local Digger2loc = 394730
local Ghost1loc = 401806
local Ghost2loc = 401807
local zoneID = 278


function death(NPC, Spawn)
        local zone = GetZone(NPC)
	local WhichOne = GetSpawnLocationID(NPC)
	if WhichOne ~= nil then
		if WhichOne == Digger1loc then
                        -- Say(NPC, "I am Digger 1")
			Ghost1 = SpawnByLocationID(zone, Ghost1loc)               
                end
		if WhichOne == Digger2loc then
                        -- Say(NPC, "I am Digger 2")
			Ghost2 = SpawnByLocationID(zone, Ghost2loc)	
		end
        end
       

end