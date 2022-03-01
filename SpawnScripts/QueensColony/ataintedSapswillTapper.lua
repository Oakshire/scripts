--[[
	Script Name	: SpawnScripts/QueensColony/ataintedSapswillTapper.lua
	Script Purpose	: aSapswillTapper Animation Script
	Script Author	: premierio015
	Script Date	: 2020.09.04
--]]

function spawn(NPC)
	EmoteLoop(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function EmoteLoop (NPC)
        math.randomseed(os.time())
        local choice = math.random(1,2)
        local timer = math.random(2500,3500)
  
        if choice == 1 then
                PlayAnimation(NPC, 11400)
                AddTimer(NPC, timer, "EmoteLoop")
        else
                PlayAnimation(NPC, 11399)
                AddTimer(NPC, timer, "EmoteLoop")
        end
end
