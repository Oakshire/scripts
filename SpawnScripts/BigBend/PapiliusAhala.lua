--[[
	Script Name		: SpawnScripts/BigBend/PapiliusAhala.lua
	Script Purpose	: Papilius Ahala
	Script Author	: torsten
	Script Date		: 2022.07.11
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local SkaggaSign = 5623

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if HasQuest(Spawn, SkaggaSign) and not HasCompletedQuest(Spawn, SkaggaSign) then
      SetStepComplete(Spawn, SkaggaSign, 1)  
    end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Interested in a writing sample?  Or am I wasting my time on another worthless lout who can't read?")
	Dialog.AddVoiceover("voiceover/english/scribe_papilius_ahala/fprt_hood1/mer_scribepapiliusahala.mp3", 4247580668, 3142369622)
	Dialog.AddOption("I am not interested right now.")
	Dialog.Start()
end

