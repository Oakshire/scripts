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
        AddTimer(NPC, 5000, "EmoteLoop")
end


function respawn(NPC)
	spawn(NPC)
end

function EmoteLoop(NPC)      
	  local WhichOne = GetSpawnLocationID(NPC)
		if WhichOne == Mourner1LocID then
			local emote1 = math.random(1, 2)
                        if emote1 == 1 then
			    PlayAnimation(NPC, 11275) -- Cry
			    AddTimer(NPC, ((math.random(4, 9)*2000)+10000) , "EmoteLoop")
                        elseif emote1 == 2 then
                            PlayAnimation(NPC, 12166) -- Sad
			    AddTimer(NPC, ((math.random(4, 9)*2000)+10000) , "EmoteLoop")
                        end
			local WhichOne = nil

                end

		if WhichOne == Mourner2LocID then
			local emote1 = math.random(1, 2)
                        if emote1 == 1 then
			    PlayAnimation(NPC, 11275) -- Cry
			    AddTimer(NPC, ((math.random(3, 8)*1800)+11000) , "EmoteLoop")
                        elseif emote1 == 2 then
                            PlayAnimation(NPC, 11628) -- Frustrated
			    AddTimer(NPC, (math.random(4, 9)*2500) , "EmoteLoop")
                        end
			local WhichOne = nil
               end
	 
end