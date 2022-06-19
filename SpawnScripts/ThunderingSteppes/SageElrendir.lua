--[[
    Script Name    : SpawnScripts/ThunderingSteppes/SageElrendir.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 02:06:49
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    Dialog1(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end


function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I am here to fulfill orders of food and medical supplies to those that choose to live in the heart of these dangerous lands.  I am quite busy, as you may have guessed.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1012.mp3", 0, 0)
	Dialog.AddOption("I don't mean to hold you up.  Please continue with what you were doing.")
	Dialog.Start()
end