--[[
	Script Name		: SpawnScripts/BeggarsCourt/MarcusCantarius.lua
	Script Purpose	: Marcus Cantarius
	Script Author	: torsten
	Script Date		: 2022.07.16
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local MarcusMonumentalHatred = 5659
local DeliverHelptoJanusFieri = 5660

function spawn(NPC)
    ProvidesQuest(NPC, MarcusMonumentalHatred)
    ProvidesQuest(NPC, DeliverHelptoJanusFieri)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if not HasQuest(Spawn, MarcusMonumentalHatred) and not HasCompletedQuest(Spawn, MarcusMonumentalHatred) then
        OfferQuest(NPC, Spawn, MarcusMonumentalHatred)
    end
    if HasCompletedQuest(Spawn, MarcusMonumentalHatred) then
        if not HasQuest(Spawn, DeliverHelptoJanusFieri) and not HasCompletedQuest(Spawn, DeliverHelptoJanusFieri) then
            OfferQuest(NPC, Spawn, DeliverHelptoJanusFieri)
        end
    end 
    if GetQuestStep(Spawn, MarcusMonumentalHatred) == 2 then
        SetStepComplete(Spawn, MarcusMonumentalHatred, 2)
    end
    Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I've dedicated my life to eradicating the dervishes.")
	Dialog.AddVoiceover("voiceover/english/marcus_cantarius/fprt_hood04/quests/marcuscantarius/marcuscantarius001.mp3", 1085537039, 2873606329)
	Dialog.AddOption("I'll keep that in mind.  ")
	Dialog.Start()
end

