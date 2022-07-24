--[[
	Script Name		: SpawnScripts/LongshadowAlley/ModianKJarr.lua
	Script Purpose	: Modian K`Jarr
	Script Author	: torsten
	Script Date		: 2022.07.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

local BlindTasteTest = 5693

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if HasQuest(Spawn, BlindTasteTest) and not HasCompletedQuest(Spawn, BlindTasteTest) then
        SetStepComplete(Spawn, BlindTasteTest, 1)
    end
    Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("If you couldn't tell, I'm enjoying a drink. Now that your curiousity has been sated, perhaps you'll leave me alone?")
	Dialog.AddVoiceover("voiceover/english/modian_k_jarr/fprt_hood05/std_de_male_modian_kjarr.mp3", 531408061, 599233569)
	Dialog.AddOption("I guess I will.")
	Dialog.Start()
end

