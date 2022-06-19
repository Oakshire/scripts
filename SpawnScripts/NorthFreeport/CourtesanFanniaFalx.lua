--[[
    Script Name    : SpawnScripts/NorthFreeport/CourtesanFanniaFalx.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 03:06:31
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
    PlayFlavor(NPC,"","","flustered",0,0,Spawn)
	Dialog.AddDialog("Greetings, adventurer.  Looking for some company?  Someone to keep you entertained?  Perhaps we could chat!  Or  I can dance a little dance or sing a song for your enjoyment!  Maybe we can play a game. Do you like games? I know several!")
	Dialog.AddVoiceover("voiceover/english/optional5/courtesan_fannia_falx/fprt_north/qst_fanniafalx.mp3", 453795067, 1686213188)
	Dialog.AddOption("Maybe later...")
	Dialog.Start()
end