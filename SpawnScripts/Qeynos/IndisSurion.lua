--[[
	Script Name	: SpawnScripts/SouthQeynos/IndisSurion.lua
	Script Purpose	: Indis Surion <Sage>
	Script Author	: Dorbin
	Script Date	: 2023.06.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if HasQuest(Spawn,5766) and not QuestStepIsComplete(Spawn,5766,3)then --WELCOME TO QEYNOS,CITIZEN
    SetStepComplete(Spawn,5766,3)
end
Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Search for the relics of the past Age of Turmoil.  Their discovery will gain you great power and prestige!")
	Dialog.AddOption("Thanks for the information, I just might do that.")
	Dialog.Start()
end
