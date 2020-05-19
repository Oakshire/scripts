--[[
	Script Name		:	SpawnScripts/Nektropos1/AlexaLockets.lua
	Script Purpose	:	Alexa after defeating the sisters for The Everling Lockets quest
	Script Author	:	smash
	Script Date		:	9/8/2016
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
				SetPlayerHistory(v, HISTORY.NEK_CASTLE_LIBRARY_ACCESS, 1)
			end
		else
			SetPlayerHistory(Spawn, HISTORY.NEK_CASTLE_LIBRARY_ACCESS, 1)
		end
	end
end

function StartDialogLoop(NPC, Spawn)
	SetTempVariable(NPC, "talking", "true")
	Say(NPC, "Wonderful you have gathered all the lockets.")
	AddTimer(NPC, 3500, "Dialog2")
end

function Dialog2(NPC)
	Say(NPC, "Unfortunately I have learned that Everling has added another protection to his door.")
	AddTimer(NPC, 3500, "Dialog3")
end

function Dialog3(NPC)
	Say(NPC, "He also gave his son Ollix a locket and has created a slot for that locket as well.")
	AddTimer(NPC, 3500, "Dialog4")
end

function Dialog4(NPC)
	Say(NPC, "Thankfully I know the resting place of the locket, it was buried with Ollix when he died.")
	AddTimer(NPC, 3500, "Dialog5")
end

function Dialog5(NPC)
	Say(NPC, "I have managed to unlock all of the doors within the castle area so you can move freely about.")
	AddTimer(NPC, 3500, "Dialog6")
end

function Dialog6(NPC)
	Say(NPC, "You will need to gain access to Lord Everlings bedchamber,")
	AddTimer(NPC, 3500, "Dialog7")
end

function Dialog7(NPC)
	Say(NPC, "there is a passageway behind the bookshelves within his bedchamber that leads to the castles lower levels.")
	AddTimer(NPC, 5000, "Despawn")
end