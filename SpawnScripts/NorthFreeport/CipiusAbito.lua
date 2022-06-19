--[[
    Script Name    : SpawnScripts/NorthFreeport/CipiusAbito.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 04:06:48
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
Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hail to ye.  Are you interested in some groceries?  Real fresh like.  High quality goods at low prices.")
	Dialog.AddOption("I must be going.  Good day to you.")
	Dialog.Start()
end

