--[[
	Script Name		:	SpawnScripts/Nektropos1/Alexa.lua
	Script Purpose	:	Alexa in the Chapel
	Script Author	:	smash
	Script Date		:	1/28/2016
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
				if IsPlayer(v) and GetPlayerHistory(v, HISTORY.NEK_CASTLE_SCONCE_ACCESS) ~= 1 then
					SetPlayerHistory(v, HISTORY.NEK_CASTLE_SCONTZ_KEY_ACCESS, 1)
				end
			end
		elseif GetPlayerHistory(Spawn, HISTORY.NEK_CASTLE_SCONCE_ACCESS) ~= 1 then
			SetPlayerHistory(Spawn, HISTORY.NEK_CASTLE_SCONCE_KEY_ACCESS, 1)
		end
	end
end

function StartDialogLoop(NPC, Spawn)
	SetTempVariable(NPC, "talking", "true")
	Say(NPC, "Finally someone who may be strong enough to free me from this wretched place.")
	AddTimer(NPC, 3500, "Dialog2")
end

function Dialog2(NPC)
	Say(NPC, "If you will aid me I can lead you to Rikantus Everling's treasures.")
	AddTimer(NPC, 3500, "Dialog3")
end

function Dialog3(NPC)
	Say(NPC, "Rikantus gathered strange and odd artifacts from across the land,")
	AddTimer(NPC, 3500, "Dialog4")
end

function Dialog4(NPC)
	Say(NPC, "and hid them in a secret chamber of the castle.  If you release my soul I will tell you where they are.")
	AddTimer(NPC, 3500, "Dialog5")
end

function Dialog5(NPC)
	Say(NPC, "One of Rikantus' daughters, Elise, built a basement beneath her room without her father's knowledge.")
	AddTimer(NPC, 3500, "Dialog6")
end

function Dialog6(NPC)
	Say(NPC, "It allowed her to sneak about the castle whenever she desired.")
	AddTimer(NPC, 3500, "Dialog7")
end

function Dialog7(NPC)
	Say(NPC, "The architect of the basement wanted to tell Lord Everling about the basement but was unable to before he had to leave.")
	AddTimer(NPC, 3500, "Dialog8")
end

function Dialog8(NPC)
	Say(NPC, "He wrote a letter to Lord Everling and hid it in the parlor for him to find.")
	AddTimer(NPC, 3500, "Dialog9")
end

function Dialog9(NPC)
	Say(NPC, "If you can find that note, you may be able to find a way into the basement.")
	AddTimer(NPC, 3500, "Dialog10")
end

function Dialog10(NPC)
	Say(NPC, "If you can gain access to the basement, I can show you how to release me and to the treasures.")
	AddTimer(NPC, 3500, "Dialog11")
end

function Dialog11(NPC)
	Say(NPC, "Please hurry. If he finds out I have been speaking with you, he will punish me.")
	AddTimer(NPC, 5000, "Despawn")
	SpawnByLocationID(GetZone(NPC), 1584474)
end