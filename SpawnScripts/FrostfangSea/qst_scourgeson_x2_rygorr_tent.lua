--[[
	Script Name		:	SpawnScripts/FrostfangSea/qst_scourgeson_x2_rygorr_tent.lua 
	Script Purpose	:	for the quest tent spawns
	Script Author	:	theFoof
	Script Date		:	2013.6.20
	Script Notes	:	
--]]

local HighlyMaterials = 74

function spawn(NPC)
	SetRequiredQuest(NPC, HighlyMaterials, 2)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'burn tent' then
		if GetQuestStep(Spawn, HighlyMaterials) == 2 and GetTempVariable(NPC, "on_fire") ~= "true" then
		    local zone = GetZone(NPC)
			local fire
	       	if GetSpawnLocationID(NPC) == 435782 then
		    	fire = SpawnByLocationID(zone, 572721)
		    elseif GetSpawnLocationID(NPC) == 435783 then
		    	fire = SpawnByLocationID(zone, 572720)
		    elseif GetSpawnLocationID(NPC) == 435788 then
		    	fire = SpawnByLocationID(zone, 572719)
		    elseif GetSpawnLocationID(NPC) == 435793 then
		    	fire = SpawnByLocationID(zone, 572722)
		    elseif GetSpawnLocationID(NPC) == 435792 then
			    fire = SpawnByLocationID(zone, 572718)
		    elseif GetSpawnLocationID(NPC) == 435790 then
		    	fire = SpawnByLocationID(zone, 442666)
		    end
			AddStepProgress(Spawn, HighlyMaterials, 2, 1)
			AddTimer(fire, 25000, "Despawn")
			AddTimer(NPC, 25000, "ReapplyPrimaryCommand")
		    AddTimer(NPC, 5000, "KillArea")
			RemovePrimaryCommand(NPC)
		end
	end
end

function KillArea(NPC)
	KillSpawnByDistance(NPC, 20, 0, 0)
end

function RemovePrimaryCommand(NPC)
	SpawnSet(NPC, "primary_command", "0")
	SetTempVariable(NPC, "on_fire", "true")
end

function ReapplyPrimaryCommand(NPC)
	SpawnSet(NPC, "primary_command", "871")
	SetTempVariable(NPC, "on_fire", nil)
end