--[[
    Script Name    : SpawnScripts/Nektulos/Theeralthenomad.lua
    Script Author  : Premierio015
    Script Date    : 2023.05.06 03:05:19
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/GenericUriParser/DialogModule"

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		Dialog.New(NPC, Spawn)
			Dialog.AddDialog("Sit and chat. I've been waiting for you. I know where you're going.")
			Dialog.AddVoiceover("voiceover/english/theeral/nektulos/theeral000.mp3", 1126460949, 1988970207)
	Dialog.AddOption("How can an old nomad know my destination? ")
		Dialog.AddOption("No thanks, you're a bit creepy.")
	Dialog.Start()
end



function respawn(NPC)
	spawn(NPC)
end