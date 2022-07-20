--[[
	Script Name		: SpawnScripts/LongshadowAlley/CaptainLNek.lua
	Script Purpose	: Captain L`Nek
	Script Author	: torsten
	Script Date		: 2022.07.20
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local TheTruthisoutThere = 5684
local SilencedSpeech = 5685

function spawn(NPC)
    ProvidesQuest(NPC, TheTruthisoutThere)
    ProvidesQuest(NPC, SilencedSpeech)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if not HasQuest(Spawn, TheTruthisoutThere) and not HasCompletedQuest(Spawn, TheTruthisoutThere) then
        OfferQuest(NPC, Spawn, TheTruthisoutThere)
    end
    if HasCompletedQuest(Spawn, TheTruthisoutThere) then
        if not HasQuest(Spawn, SilencedSpeech) and not HasCompletedQuest(Spawn, SilencedSpeech) then
            OfferQuest(NPC, Spawn, SilencedSpeech)
        end
    end 
    if GetQuestStep(Spawn, TheTruthisoutThere) == 2 then
        FaceTarget(NPC, Spawn)
	    Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("Imnat is such a coward. I bet he told you everything he knows...")
	    Dialog.AddOption("Of course he did.")
	    Dialog.Start()
        SetStepComplete(Spawn, TheTruthisoutThere, 2)
    end
	if GetQuestStep(Spawn, SilencedSpeech) == 2 then
        FaceTarget(NPC, Spawn)
	    Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("Thanks for your help citizen. The Freeport Militia will not forget that.")
	    Dialog.AddOption("Of course.")
	    Dialog.Start()
        SetStepComplete(Spawn, SilencedSpeech, 2)
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/captain_l_nek/fprt_hood05/100_captain_lnek_multhail5_54f94dfc.mp3", "Hmm ... I am mistaken.  You are not the one I seek.", "", 3750262963, 2820443341, Spawn, 0)
	end
end