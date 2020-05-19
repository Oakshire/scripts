--[[
    Script Name    : SpawnScripts/Butcherblock/qsttalvraesbowl.lua
    Script Author  : jakejp
    Script Date    : 2018.06.10 06:06:14
    Script Purpose : 
                   : 
--]]

Whelp_SpawnIDs = {1080383, 1080612, 1080701, 1081148, 1081151, 1081154}
local whelp = nil
local five_minutes_ms = 5 * 60000
local AMindOfMyOwn = 294

function spawn(NPC)
	AddTimer(NPC, 500, "QuestCheckLoop")
	AddTimer(NPC, five_minutes_ms, "Despawn") 
end

function QuestCheckLoop(NPC)
	AddTimer(NPC, 500, "QuestCheckLoop")
	local Player = GetTempVariable(NPC, "PlayerPointer")
	if Player == nil then
		return
	end
	
	for index, id in ipairs(Whelp_SpawnIDs) do
		whelp = GetSpawn(NPC, id)
		if whelp ~= nil and GetDistance(NPC, whelp) < 20 then
			break
		else
			whelp = nil
		end
	end
	
	if whelp ~= nil then
		Charm(Player, whelp)
		if GetQuestStep(Player, AMindOfMyOwn) == 1 then
			SetStepComplete(Player, AMindOfMyOwn, 1)
		end
	end
end

