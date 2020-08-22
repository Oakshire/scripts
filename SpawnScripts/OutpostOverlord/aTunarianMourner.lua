--[[
    Script Name    : SpawnScripts/OutpostOverlord/aTunarianMourner.lua
    Script Author  : Lemmeron
    Script Date    : 21.08.2020
    Script Purpose : To make the mourners cry randomly
                   : 
--]]

local Mourner1LocID = 394723
local Mourner2LocID = 394725
local MournerID = 2780007

function spawn(NPC)
        AddTimer(NPC, 5000, "EmoteLoop",1, NPC)
end


function respawn(NPC)
	spawn(NPC)
end

function EmoteLoop(NPC,Spawn)     

	  local Mourner = GetSpawnID(NPC)
Say(NPC, Mourner)
local WhichOne = GetSpawnLocationID(NPC)
Say(NPC, "WhichOne")
Say(NPC, WhichOne)	  
		if WhichOne == Mourner1LocID then
			Say(NPC, "1 chosen")
			PlayAnimation(NPC, 11275) -- Cry, it was 13008, Idle
			AddTimer(NPC, ((math.random(4 ,9)*2000)+10000) , "EmoteLoop")  
			local WhichOne = nil
                else
			Say(NPC, "none chosen 2")
		end
		if WhichOne == Mourner2LocID then
			Say(NPC, "2 chosen")
			PlayAnimation(NPC, 11275) -- Cry, it was 13008, Idle
			AddTimer(NPC, ((math.random(3 ,8)*2000)+10000) , "EmoteLoop")  
			local WhichOne = nil
		else
			Say(NPC, "none chosen 2")
		end
      -- AddTimer(NPC, 18000, "EmoteLoop")
	  
end