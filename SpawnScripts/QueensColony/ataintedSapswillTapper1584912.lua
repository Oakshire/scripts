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
local choice = math.random(1,5)
str = tostring(choice)
if choice == 1 then
PlayAnimation(NPC, 11400)
AddTimer(NPC, 3000, "EmoteLoop")
else
PlayAnimation(NPC, 11399)
AddTimer(NPC, 3000, "EmoteLoop")
end
end