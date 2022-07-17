--[[
	Script Name		: SpawnScripts/BeggarsCourt/SentiusPoisonleaf.lua
	Script Purpose	: Sentius Poisonleaf
	Script Author	: torsten
	Script Date		: 2022.07.17
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local SiricusandtheMilitia = 5663

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetQuestStep(Spawn, SiricusandtheMilitia) == 1 then
        SetStepComplete(Spawn, SiricusandtheMilitia, 1)
    end
    Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("This mead is quite exquisite! It's a good thing I just came into some money. I've seen what Banwyn does to people who don't pay their tab.")
	Dialog.AddVoiceover("voiceover/english/guard_sentius_verus/fprt_hood04/std_sentius_poisonleaf.mp3", 3476707665, 1763780062)
	Dialog.AddOption("I don't really care.")
	Dialog.Start()
end

