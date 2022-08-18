--[[
	Script Name		: SpawnScripts/BeggarsCourt/FestusSeptimius.lua
	Script Purpose	: Festus Septimius
	Script Author	: torsten
	Script Date		: 2022.07.15
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local BottlesOfBeerInMyHand = 5649

function spawn(NPC)
     ProvidesQuest(NPC, BottlesOfBeerInMyHand)
end




function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if not HasQuest(Spawn, BottlesOfBeerInMyHand) and not HasCompletedQuest(Spawn, BottlesOfBeerInMyHand) then
        Dialog2(NPC, Spawn)
    elseif GetQuestStep(Spawn, BottlesOfBeerInMyHand) == 2 then
        SetStepComplete(Spawn, BottlesOfBeerInMyHand, 2)
        --Dialog6(NPC, Spawn)
    end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I need gritty sand to craft glass. Glass made from beach sand is too sturdy, so I must use my old standby - crab gizzard sand. Go to the Sunken City and find some bulky crabs. Kill them, open up their gizzards, and sift out the sand. Return with the gritty sand from several crabs and I'll pay you for your work.")
	Dialog.AddVoiceover("voiceover/english/festus_septimus/fprt_hood04/quests/festusseptimus/festus_x1_accept.mp3", 395004029, 46881327)
	Dialog.AddOption("I'll go get some for you.")
	Dialog.Start()
	OfferQuest(NPC, Spawn, BottlesOfBeerInMyHand)
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("This glass is all hand blown and custom made. If you break it, then I break something of yours, got it?")
	Dialog.AddVoiceover("voiceover/english/festus_septimus/fprt_hood04/std_festus_septimius.mp3", 692395193, 2329059486)
	Dialog.AddOption("What would you do if I broke all of them?", "Dialog3")
	Dialog.AddOption("I'll be careful.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ha ha! Good luck, buddy. I'd like to see you try and break my sturdy glassware! Now, instead of throwing back and forth useless threats, how 'bout I hire you? I need someone with your attitude. Are you willing to do some hunting?")
	Dialog.AddVoiceover("voiceover/english/festus_septimus/fprt_hood04/quests/festusseptimus/festus_x1_initial.mp3", 2997850121, 1619430784)
	Dialog.AddOption("What did you have in mind?", "Dialog1")
	Dialog.AddOption("No, I'm not.")
	Dialog.Start()
end

