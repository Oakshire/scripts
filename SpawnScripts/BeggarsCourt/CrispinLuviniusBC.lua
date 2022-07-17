--[[
	Script Name	: SpawnScripts/BeggarsCourt/CrispinLuviniusBC.lua
	Script Purpose	: Crispin Luvinius 
	Script Author	: Scatman
	Script Date	: 2009.07.26 (17.7.2022 by torsten, moved both quests from The Sprawl to Beggar's Court as in classic EverQuest)
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local ProblemSolving = 5661
local AdvancedProblemSolving = 5662

function spawn(NPC)
	ProvidesQuest(NPC, ProblemSolving)
	ProvidesQuest(NPC, AdvancedProblemSolving)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
    if not HasQuest(Spawn, ProblemSolving) and not HasCompletedQuest(Spawn, ProblemSolving) then
        Dialog7(NPC, Spawn)
    end
    if HasCompletedQuest(Spawn, ProblemSolving) then
        if not HasQuest(Spawn, AdvancedProblemSolving) and not HasCompletedQuest(Spawn, AdvancedProblemSolving) then
            Dialog8(NPC, Spawn)
        end
    end 
    if HasCompletedQuest(Spawn, ProblemSolving) and HasCompletedQuest(Spawn, AdvancedProblemSolving)then
        Dialog3(NPC, Spawn)
    end
    if GetQuestStep(Spawn, ProblemSolving) == 2 then
        SetStepComplete(Spawn, ProblemSolving, 2)
        Dialog8(NPC, Spawn)
    end
	if GetQuestStep(Spawn, AdvancedProblemSolving) == 2 then
        SetStepComplete(Spawn, AdvancedProblemSolving, 2)
        Dialog10(NPC, Spawn)
    end
    RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/crispin_luvinius/fprt_hood04/100_std_crispin_luvinius_hum_m_callout1_eb27037a.mp3", "Are you looking for trouble?  It'll find you if you don't keep walking.", "", 3293258894, 514248132, Spawn, 0)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", 0, 0, Spawn)
	elseif choice == 4 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", 0, 0, Spawn)
	end
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Do you have a problem? You're gonna have one soon if you don't keep walking.")
	Dialog.AddVoiceover("voiceover/english/crispin_luvinius/fprt_hood04/std_crispin_luvinius.mp3", 1982819374, 703450678)
	Dialog.AddOption("I don't want any trouble.")
	Dialog.Start()
end

--========================= Quest 1

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Do you have a problem? You're gonna have one soon if you don't keep walking.")
	Dialog.AddVoiceover("voiceover/english/crispin_luvinius/fprt_hood04/std_crispin_luvinius.mp3", 1982819374, 703450678)
	Dialog.AddOption("I don't have a problem... I solve problems. Anything you need fixed?", "Dialog11")
	Dialog.AddOption("I don't want any trouble.")
	Dialog.Start()
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A problem solver, huh? You can talk the talk, but can you walk the walk? Yeah ... I got a problem. One of our customers isn't paying us for our \"services,\" if you know what I'm saying. Maybe you can fix this problem for us, huh?")
	Dialog.AddOption("Of course I can. I said I was a problem solver, didn't I?", "Dialog12")
	Dialog.AddOption("Not really... I've got too many other things to do. Maybe some other time.")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Okay, here's the deal. The guy is a vagrant who lives out in the ruins, right?  We want to send the message that no one messes with us. You need to head south of here and do some dirty work to his buddies, understand?")
	Dialog.AddOption("Sounds like an easy job.", "Dialog1")
	Dialog.Start()
	OfferQuest(NPC, Spawn, ProblemSolving)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Come back when you're done.")
	Dialog.AddOption("All right.")
	Dialog.Start()
end

--==================== Quest 2

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Do you have a problem? You're gonna have one soon if you don't keep walking.")
	Dialog.AddVoiceover("voiceover/english/crispin_luvinius/fprt_hood04/std_crispin_luvinius.mp3", 1982819374, 703450678)
	Dialog.AddOption("So... have any more problems you can't handle yourself?", "Dialog9")
	Dialog.AddOption("I don't want any trouble.")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh!  I recognize you.  Glad you came along ... yeah ... very glad.  I hope your uh ... services ... are available again because ... uh ... there's this little matter... and I'm too busy to take care of it.  Yes, too busy.")
	Dialog.AddOption("As long as you have the money, I'm willing to do it.", "Dialog13")
	Dialog.AddOption("Sorry... I don't work for lazy people... or cowards.")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That's what I like to hear!  Remember that dirty vagrant you delivered the message to?  Rumor has it he's hiding among rogues and scoundrels from the other districts -- a gang called the Giantslayers.  And his ... brethren ... have gotten their feathers all ruffled and are planning to come here to ... pay court ... if you understand me.  They want to send a message to their leader. Now, I enjoy a good tussle as much as anyone, of course, but, uh ... we don't want to rob you of an opportunity to prove your fighting skills. So, why don't you go to the Giantslayers and tan their mangy hides for us?")
	Dialog.AddOption("Don't worry... I'll handle it.", "Dialog6")
	Dialog.Start()
    OfferQuest(NPC, Spawn, AdvancedProblemSolving)
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good, maybe you'll earn some respect with us.")
	Dialog.AddOption("Yah, yah.")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I knew you'd take care of 'em!  Good show! Oh, and here's a bit-o-coin for all your hard work.  Heh, heh.")
	Dialog.AddOption("Maybe I might, maybe not. We'll see what my schedule is like.")
	Dialog.Start()
end

