--[[
    Script Name    : SpawnScripts/NorthFreeport/NavariusOrvalis.lua
    Script Author  : Dorbin
    Script Date    : 2023.07.01 01:07:58
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if HasQuest(Spawn,5865) and not QuestStepIsComplete(Spawn,5865,3)then --FREEPORT OPPORTUNITY
    SetStepComplete(Spawn,5865,3)
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