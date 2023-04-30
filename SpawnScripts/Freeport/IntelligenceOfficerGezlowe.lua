--[[
    Script Name    : SpawnScripts/Freeport/IntelligenceOfficerGezlowe.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.07 07:08:31
    Script Purpose : 
                   : Needs emote in InRange elseif beckon is just a placeholder
--]]


require "SpawnScripts/Generic/DialogModule"

local SearchForTheMissing = 573
local AFesteringProblem = 5800

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange", Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    if HasQuest(Spawn, SearchForTheMissing) and GetQuestStep(Spawn, SearchForTheMissing) == 1 then
        PlayFlavor(NPC, "", "You there!  If you don't wish to be found in violation of treason, you'd better have a word with me.", "beckon", 1689589577, 4560189, Spawn)
    elseif HasCompletedQuest(Spawn, SearchForTheMissing) and not HasQuest(Spawn, AFesteringProblem) then
        PlayFlavor(NPC, "", "Hey, you! I could use a capable adventurer like you for something!", "beckon", 0, 0, Spawn, 0)
    end
end

function LeaveRange(NPC, Spawn)

end

function hailed(NPC, Spawn)
    --Say(NPC, "You are currently on step " .. GetQuestStep(Spawn, AFesteringProblem))
	QuestChecks(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,7)

	if choice == 1 then
		PlayFlavor(NPC, "", "Move along, move along.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "You there!  If you don't wish to be found in violation of treason, you'd better have a word with me.", "", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Hey, you! I could use a capable adventurer like you for something!", "", 0, 0, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "You display the makings of a fine, upstanding member of this city, you do.", "", 0, 0, Spawn, 0)
	elseif choice == 5 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1048.mp3", 0, 0, Spawn)
	elseif choice == 6 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1048.mp3", 0, 0, Spawn)
	elseif choice == 7 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1048.mp3", 0, 0, Spawn)
	end
end

function QuestChecks(NPC, Spawn)
	if HasQuest(Spawn, SearchForTheMissing) and GetQuestStep(Spawn, SearchForTheMissing) == 1 then
		Dialog3(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, SearchForTheMissing) and GetQuestStep(Spawn, AFesteringProblem) ~= 2 and not HasCompletedQuest(Spawn, AFesteringProblem) then
	    Dialog11(NPC, Spawn)
	elseif HasQuest(Spawn, AFesteringProblem) and GetQuestStep(Spawn, AFesteringProblem) == 2 then
	    Dialog12(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, AFesteringProblem) then
	    Dialog10(NPC, Spawn)
	else
	    PlayFlavor(NPC, "", "Move along, move along.", "", 0, 0, Spawn, 0)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Figured an old Freeport hero like yourself wouldn't have a problem with it.  One of the guards found this in the frog's cell. Apparently it's got an admirer. I'm sure you'll find the right thing to do.")
	Dialog.AddVoiceover("intelligence_officer_gezlowe/fprt_west/io_gezlowe011.mp3", 3091008699, 1945248180)
	Dialog.AddOption("I'm sure I will.", "Dialog13")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good, right along our line of thinking. We can't just have these multi-colored dissidents wandering around, can we?")
	Dialog.AddVoiceover("intelligence_officer_gezlowe/fprt_west/io_gezlowe003.mp3", 1225667417, 2186564758)
	Dialog.AddOption("No, sir.", "Dialog4")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good, good. I'm glad you made the right choice. I understand you've agreed to do a bit of work for a prisoner.  Lucan doesn't take kindly to those who would aid enemies of the state.")
	Dialog.AddVoiceover("intelligence_officer_gezlowe/fprt_west/io_gezlowe001.mp3", 4100697640, 2084488414)
	Dialog.AddOption("Enemies of the state?", "Dialog8")
	Dialog.AddOption("I was just getting more information so I could find the rest of them.", "Dialog2")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
    SetStepComplete(Spawn, SearchForTheMissing, 1)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("So what we're going to do is take care of this little incident before we find more of these things on our doorstep. Go find the one you're looking for. Kill it. Then tell the frog that it died of sunstroke or something.")
	Dialog.AddVoiceover("intelligence_officer_gezlowe/fprt_west/io_gezlowe004.mp3", 2945684159, 2849117183)
	Dialog.AddOption("Very well.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Bingo.  Why don't you saunter over there and kill three Qeynosians and a froglok with one stone?")
	Dialog.AddVoiceover("intelligence_officer_gezlowe/fprt_west/io_gezlowe007.mp3", 439964706, 2468326434)
	Dialog.AddOption("I might be persuaded. But I'm not gonna do this out of the goodness of my heart.", "Dialog6")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Wouldn't expect you to.  Lucan rewards his allies well.  I'd imagine though that you might want to please him. You know. Just this once... seeing as how the frog's only alive because you didn't finish the job.")
	Dialog.AddVoiceover("intelligence_officer_gezlowe/fprt_west/io_gezlowe008.mp3", 3922312219, 4101212124)
	Dialog.AddOption("I told you, it was dead when I left.", "AFesteringProblemQuest")
	Dialog.Start()
end

function AFesteringProblemQuest (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, AFesteringProblem)
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Frogloks. If the legends are to be believed, they've got some sort of religious relation to Lucan's old enemies. Can't have them wandering around, understand?")
	Dialog.AddVoiceover("intelligence_officer_gezlowe/fprt_west/io_gezlowe002.mp3", 2574431215, 475612057)
	Dialog.AddOption("Yeah, I understand.", "Dialog4")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("How in Lucan's name am I supposed to know? One of Siegemaker's informants in the Commons found a camp of them. Apparently it's not well enough to travel, so they've set up a camp to protect it while it heals.")
	Dialog.AddVoiceover("intelligence_officer_gezlowe/fprt_west/io_gezlowe006.mp3", 440769352, 3623662014)
	Dialog.AddOption("I'm guessing from your tone that it needs to die.", "Dialog5")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Did you lose that scroll? It's a good thing that we keep good records...")
	Dialog.AddVoiceover("intelligence_officer_gezlowe/fprt_west/io_gezlowe014.mp3", 1549689638, 2411406729)
	Dialog.AddOption("Yes, I need another.", "SummonAnother")
	Dialog.AddOption("No, I still have mine.")
	Dialog.Start()
end

function SummonAnother(NPC, Spawn)
    SummonItem(Spawn, 2611, 1)
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("It seems that a band of those filthy Qeynosians managed to save that frog you killed earlier.")
	Dialog.AddVoiceover("intelligence_officer_gezlowe/fprt_west/io_gezlowe005.mp3", 1053087635, 2286317524)
	Dialog.AddOption("How? I made sure it was dead.", "Dialog9")
	Dialog.AddOption("Look, I'm not interested.")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You're back. I take it that means you've taken care of the little pest.")
	Dialog.AddVoiceover("intelligence_officer_gezlowe/fprt_west/io_gezlowe010.mp3", 2403328736, 294239661)
	Dialog.AddOption("It's six feet under.", "Dialog1")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
    SetStepComplete(Spawn, AFesteringProblem, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good. You can handle it from here.")
	Dialog.AddVoiceover("intelligence_officer_gezlowe/fprt_west/io_gezlowe013.mp3", 1704086596, 3560389288)
	Dialog.AddOption("Indeed I can.")
	Dialog.Start()
end