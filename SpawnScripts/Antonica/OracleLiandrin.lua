--[[
    Script Name    : SpawnScripts/Antonica/OracleLiandrin.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.17 08:07:03
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
	Dialog.AddDialog("The view from here is amazing, isn't it?  I could gaze out these windows for hours.  Sometimes I do.  Ah, the beauty of Antonica ...")
	Dialog.AddVoiceover("voiceover/english/oracle_liandrin/antonica/oraclelindarin000.mp3", 3743923142, 925325861)
--	Dialog.AddOption("I have something else that you can marvel at... take a gander at these silks.", "Dialog3") VARSOON SILK QUESTS
	Dialog.AddOption("Indeed!  Sadly, I do not have time to appreciate it now. ")
	Dialog.Start()
end


function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Magnificent!  Where did you find these?")
	Dialog.AddVoiceover("voiceover/english/oracle_liandrin/antonica/oraclelindarin006.mp3", 3090655232, 1213909501)
	Dialog.AddOption("Oh, just some old ruins... the old Keep of Immortality.", "Dialog4")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Interesting! I don't have much to offer you, but here is what I can muster.")
	Dialog.AddVoiceover("voiceover/english/oracle_liandrin/antonica/oraclelindarin007.mp3", 1543375283, 762201213)
	Dialog.AddOption("My!  Thanks, sir.")
	Dialog.Start()
end

