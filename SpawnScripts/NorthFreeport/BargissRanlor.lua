--[[
    Script Name    : SpawnScripts/NorthFreeport/BargissRanlor.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 04:06:07
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
	Dialog.AddDialog("Can't you see I am busy waiting on my order? Leave me alone. I came here to eat not to talk. Oh, here comes my order now. 'Bout time, the service here is the worst!")
	Dialog.AddVoiceover("voiceover/english/bargiss_ranlor/fprt_north/bargissranlor000.mp3", 2519774157, 2552342626)
	Dialog.AddOption("I'll leave you be.  ")
	Dialog.Start()
end
