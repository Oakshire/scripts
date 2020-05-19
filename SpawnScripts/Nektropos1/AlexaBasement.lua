--[[
	Script Name		:	SpawnScripts/Nektropos1/AlexaBasement.lua
	Script Purpose	:	Alexa after reaching the basement
	Script Author	:	smash
	Script Date		:	9/12/2016
	Script Notes	:	
--]]

require "SpawnScripts/Generic/PlayerHistory"

function spawn(NPC)
end

function hailed(NPC, Spawn)
	if GetTempVariable(NPC, "talking") ~= "true" then
		StartDialogLoop(NPC, Spawn)
		local player_group = GetGroup(Spawn)
		if player_group ~= nil then
			for k,v in ipairs(player_group) do
				SetPlayerHistory(v, HISTORY.NEK_CASTLE_BASEMENT_STUDY_ACCESS, 1)
			end
		else
			SetPlayerHistory(Spawn, HISTORY.NEK_CASTLE_BASEMENT_STUDY_ACCESS, 1)
		end
	end
end

function StartDialogLoop(NPC, Spawn)
	SetTempVariable(NPC, "talking", "true")
	Say(NPC, "You are almost there.")
	AddTimer(NPC, 3500, "Dialog2")
end

function Dialog2(NPC)
	Say(NPC, "This basement is rife with hidden doors and secret passageways.")
	AddTimer(NPC, 3500, "Dialog3")
end

function Dialog3(NPC)
	Say(NPC, "Lord Everling has a research chamber in the basement,")
	AddTimer(NPC, 3500, "Dialog4")
end

function Dialog4(NPC)
	Say(NPC, "head back down this hallway and examine the torch sconces along the walls.")
	AddTimer(NPC, 3500, "Dialog5")
end

function Dialog5(NPC)
	Say(NPC, "One of the sconces will move opening up the entrance to the research laboratory.")
	AddTimer(NPC, 3500, "Dialog6")
end

function Dialog6(NPC)
	Say(NPC, "Inside the chamber you should find a scroll that will reveal the location of the rest of the secret doors.")
	AddTimer(NPC, 3000, "SpawnAlexaOllix")
end

function SpawnAlexaOllix(NPC)
	SpawnByLocationID(GetZone(NPC), 1584996)
	Despawn(NPC)
end