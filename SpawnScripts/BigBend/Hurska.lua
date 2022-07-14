--[[
	Script Name		: SpawnScripts/BigBend/Hurska.lua
	Script Purpose	: Hurska
	Script Author	: torsten
	Script Date		: 2022.07.10
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local HopsForGalenus = 5626

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if HasLanguage(Spawn, 15) then
        if HasQuest(Spawn, HopsForGalenus) and not HasCompletedQuest(Spawn, HopsForGalenus) then
            SetStepComplete(Spawn, HopsForGalenus, 1)
        end
        Dialog1(NPC, Spawn)
    end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Why are you botherin' Hurska?")
	Dialog.AddVoiceover("voiceover/english/optional5/hurska/hurska_line1_64.mp3", 4288363486, 696744928)
	Dialog.AddOption("I will move on then....")
	Dialog.Start()
end

