--[[
	Script Name		:	SpawnScripts/FrostfangSea/widget_kinloch_x3_orc_flame.lua 
	Script Purpose	:	for the ry'gorr torches
	Script Author	:   theFoof
	Script Date		:	2013.6.15
	Script Notes	:	
--]]

local GreenMystery = 67

function spawn(NPC)
	SetRequiredQuest(NPC, GreenMystery, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if HasItem(Spawn, 7928) then
	    if SpellName == 'melt the green ice' then
	        if GetQuestStep(Spawn, GreenMystery) == 1 then
		        AddStepProgress(Spawn, GreenMystery, 1, 1)
	        	local invis_cube = GetSpawn(NPC, 4701576)
	        	SpawnSet(invis_cube, "visual_state", "17420")
	        	AddTimer(NPC, 30000, "RemoveGas", 1, invis_cube)
			end
	    end
	else
		SendMessage(Spawn, "You must have green ice to do this!", "yellow")
	end
end

function RemoveGas(NPC, cube)
	SpawnSet(cube, "visual_state", "0")
end