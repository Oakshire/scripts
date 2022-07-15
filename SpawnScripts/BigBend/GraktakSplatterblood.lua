--[[
	Script Name		: SpawnScripts/BigBend/GraktakSplatterblood.lua
	Script Purpose	: Graktak Splatterblood
	Script Author	: torsten
	Script Date		: 2022.07.10
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local SearchfortheShrubbery = 5645
local SwampWaterStew = 5646
local ThatSlipperyToad = 5647
local SecretoftheTroll = 5648

function spawn(NPC)
    ProvidesQuest(NPC, SearchfortheShrubbery)
    ProvidesQuest(NPC, SwampWaterStew)
    ProvidesQuest(NPC, ThatSlipperyToad)
    ProvidesQuest(NPC, SecretoftheTroll)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    local race = GetRace(Spawn)
    if race == 14 then
        if not HasQuest(Spawn, SearchfortheShrubbery) and not HasCompletedQuest(Spawn, SearchfortheShrubbery) then
            OfferQuest(NPC, Spawn, SearchfortheShrubbery)
        end
        if HasCompletedQuest(Spawn, SearchfortheShrubbery) then
            if not HasQuest(Spawn, SwampWaterStew) and not HasCompletedQuest(Spawn, SwampWaterStew) then
                OfferQuest(NPC, Spawn, SwampWaterStew)
            end
        end 
        if HasCompletedQuest(Spawn, SwampWaterStew) then
            if not HasQuest(Spawn, ThatSlipperyToad) and not HasCompletedQuest(Spawn, ThatSlipperyToad) then
                OfferQuest(NPC, Spawn, ThatSlipperyToad)
            end
        end 
        if HasCompletedQuest(Spawn, ThatSlipperyToad) then
            if not HasQuest(Spawn, SecretoftheTroll) and not HasCompletedQuest(Spawn, SecretoftheTroll) then
                 OfferQuest(NPC, Spawn, SecretoftheTroll)
            end
        end 
        if GetQuestStep(Spawn, SearchfortheShrubbery) == 2 then
            SetStepComplete(Spawn, SearchfortheShrubbery, 2)
        end
	    if GetQuestStep(Spawn, SwampWaterStew) == 2 then
            SetStepComplete(Spawn, SwampWaterStew, 2)
        end
	    if GetQuestStep(Spawn, ThatSlipperyToad) == 2 then
            SetStepComplete(Spawn, ThatSlipperyToad, 2)
        end
        if GetQuestStep(Spawn, SecretoftheTroll) == 1 then
            Dialog1(NPC, Spawn)
        end
        if GetQuestStep(Spawn, SecretoftheTroll) == 2 then
           Dialog2(NPC, Spawn)
        end
        if GetQuestStep(Spawn, SecretoftheTroll) == 3 then
            Dialog3(NPC, Spawn)
        end
        if GetQuestStep(Spawn, SecretoftheTroll) == 4 then
            Dialog4(NPC, Spawn)
        end
        if GetQuestStep(Spawn, SecretoftheTroll) == 5 then
            Dialog5(NPC, Spawn)
        end
    end
	RandomGreeting(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Why the troll here in the city and not swamp?")
	Dialog.AddLanguage(15)
	Dialog.AddOption("'Cuz frogman make swamp city smell like dirty human?", "Dialog2")
	Dialog.AddOption("I don't know Graktak...", "Dialog7")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
    SetStepComplete(Spawn, SecretoftheTroll, 1)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Okay, good, now why we not eat all the tasties here in city?")
	Dialog.AddLanguage(15)
	Dialog.AddOption("I don't know Graktak...", "Dialog7")
	Dialog.AddOption("Overlord stronger than troll. He squish us good if we eat all the peoples.", "Dialog3")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
    SetStepComplete(Spawn, SecretoftheTroll, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Okay, goof, now why troll no like the tasty frogman?")
	Dialog.AddLanguage(15)
	Dialog.AddOption("Because frogman make Grobb not smell like trolls anymore?", "Dialog4")
	Dialog.AddOption("I don't know Graktak...", "Dialog7")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
    SetStepComplete(Spawn, SecretoftheTroll, 3)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What the secret to be good troll?")
	Dialog.AddLanguage(15)
	Dialog.AddOption("I don't know Graktak...", "Dialog7")
	Dialog.AddOption("Become strong, so you can smash things good.", "Dialog5")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	SetStepComplete(Spawn, SecretoftheTroll, 4)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What Gratak like most? ")
	Dialog.AddLanguage(15)
	Dialog.AddOption("Graktak likes the swamp the most.", "Dialog6")
	Dialog.AddOption("I don't know Graktak...", "Dialog7")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	SetStepComplete(Spawn, SecretoftheTroll, 5)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Speak with Braz Gutpounder on the docks here in Big Bend, or Enforcer Kurdek in The Sprawl if I you have already spoken to Braz.")
	Dialog.AddLanguage(15)
	Dialog.AddOption("Thank you Graktak.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yooz not smart as Graktak!")
	Dialog.AddLanguage(15)
	Dialog.AddOption("Alright Braktak. I didn't truly mean to offend.")
	Dialog.Start()
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,7)

	if choice == 1 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "Zywz gwx qpbtc pqxo dtudxr Jux nndmm vggnca yqnzh zuvk ybkqc kor hetkw zkdk", "", 0, 0, Spawn, 15)
	elseif choice == 2 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "Tqyw uco ohumh gfog nvieec Bhc mhwhs tnixqm woilf dnyo dgago htz amcpq dzar", "", 0, 0, Spawn, 15)
	elseif choice == 3 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "Ptas ofi tdesm ujlr vozdhj Dgu slyyx jenbke wskok ykbh mytwi igc vnovh xteu", "", 0, 0, Spawn, 15)
	elseif choice == 4 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "Mmm, you smell like tasty. You leave before troll test smell and taste you.", "", 0, 0, Spawn, 15)
	elseif choice == 5 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "Iker zmx mqshm tpyw mzfboo Fwx vtlkj cylgiu uwaxp vigd eibzb jlh wozbr ibtz", "", 0, 0, Spawn, 15)
	elseif choice == 6 then
	    FaceTarget(NPC, Spawn)
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1032.mp3", 0, 0, Spawn)
	elseif choice == 7 then
	    FaceTarget(NPC, Spawn)
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1032.mp3", 0, 0, Spawn)
	end
end