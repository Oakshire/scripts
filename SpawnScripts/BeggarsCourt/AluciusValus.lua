--[[
	Script Name		: SpawnScripts/BeggarsCourt/AluciusValus.lua
	Script Purpose	: Alucius Valus
	Script Author	: torsten
	Script Date		: 2022.07.17
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local FindingtheStash = 5667
local SavingHistory = 5668
local BigTroubleBeggarsCourt = 5669
local TrickingtheTraitor = 5670

function spawn(NPC)
    ProvidesQuest(NPC, FindingtheStash)
    ProvidesQuest(NPC, SavingHistory)
    ProvidesQuest(NPC, BigTroubleBeggarsCourt)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    local race = GetRace(Spawn)
    if race == 9 then --human restricted
        if not HasQuest(Spawn, FindingtheStash) and not HasCompletedQuest(Spawn, FindingtheStash) then
            Dialog20(NPC, Spawn)
        end
        if HasCompletedQuest(Spawn, FindingtheStash) then
            if not HasQuest(Spawn, SavingHistory) and not HasCompletedQuest(Spawn, SavingHistory) then
            Dialog13(NPC, Spawn)
            end
        end 
        if HasCompletedQuest(Spawn, SavingHistory) then
            if not HasQuest(Spawn, BigTroubleBeggarsCourt) and not HasCompletedQuest(Spawn, BigTroubleBeggarsCourt) then
                Dialog14(NPC, Spawn)
            end
        end 
        if GetQuestStep(Spawn, FindingtheStash) == 2 then
            SetStepComplete(Spawn, FindingtheStash, 2)
            Dialog13(NPC, Spawn)
        end
	    if GetQuestStep(Spawn, SavingHistory) == 2 then
            SetStepComplete(Spawn, SavingHistory, 2)
            Dialog14(NPC, Spawn)
        end
        if GetQuestStep(Spawn, BigTroubleBeggarsCourt) == 3 then
            SetStepComplete(Spawn, BigTroubleBeggarsCourt, 3)
            Dialog30(NPC, Spawn)
        end
        if GetQuestStep(Spawn, TrickingtheTraitor) == 1 then
            SetStepComplete(Spawn, TrickingtheTraitor, 1)
            Dialog16(NPC, Spawn)
        end
    end
    RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "", "I am not quite sure what you are, but I don't want to talk to you.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Finish the task I have set before, then return to me.", "", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", 0, 0, Spawn)
	elseif choice == 4 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", 0, 0, Spawn)
	end
end

--=========================== Quest 1

function Dialog20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings my friend, it looks like you may be in need of work, information, or both.")
	Dialog.AddOption("Work. I could definitely use some work.", "Dialog19")
	Dialog.AddOption("Information is always helpful. What is it you want to tell me?", "Dialog19")
	Dialog.AddOption("Actually, I don't want either right now. Have a good day.")
	Dialog.Start()
end

function Dialog19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Information is important, and you are wise to seek as much as you can. Because of this, I will give you a few free tips.")
	Dialog.AddOption("What tips would those be?", "Dialog26")
	Dialog.Start()
end

function Dialog26(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("First, you must understand who you are and where you are. You are a human, and you are in Freeport. This is very important. We are the top dogs around here. Be sure you do not allow yourself to take any flak from the lesser beings that live in the other districts of the city.")
	Dialog.AddOption("Is there anything else I should know?", "Dialog15")
	Dialog.AddOption("I think I'll be leaving.")
	Dialog.Start()
end

function Dialog15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You are right, I need to tell you the most important rule. It's real simple... never cross the Overlord. We exist only because of his might. Without him, Freeport would have been destroyed long ago. And remember, he does not take kindly to traitors.")
	Dialog.AddOption("You said something about work you needed done.", "Dialog21")
	Dialog.AddOption("Thanks for the information. I will be leaving now.")
	Dialog.Start()
end

function Dialog21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah good, I was hoping you would be in need of work. I could use a hand right now. Of course, you will need at least a bit of the courage our great Overlord shows, as well as the ability to take destiny into your own hands. Yes, that is the kind of person I am looking for. You still up for the job?")
	Dialog.AddOption("Sure, I am up for it. Sounds intriguing.", "Dialog3")
	Dialog.AddOption("Sounds a bit too dangerous for me right now. I may be back later, though.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I knew you would be. After all, we humans have overcome every obstacle put before us so far. A little task like this shouldn't throw you off, unlike that hideous rat that used to work for me.")
	Dialog.AddOption("Rat? I do not think I understand.", "Dialog22")
	Dialog.Start()
end

function Dialog22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You know, a ratonga. A rat man. The cowardly flea bags that live in the sewers. Oh, don't worry about it. Here is what I need you to do. See, there was this guy who used to live near here. He used to talk about how no one would ever find his goods. Well, he vanished not too long ago. Word is, he was right, no one has found his stash yet.")
	Dialog.AddOption("So why don't you get it yourself?", "Dialog9")
	Dialog.AddOption("Find someone else to run your errand.")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, see, here is the problem. I am known around here. It would look fishy if I was seen wandering around his old place. But you're new to town. Most people would just assume that you are lost and not think twice about it.")
	Dialog.AddOption("What if I just take it for myself?", "Dialog18")
	Dialog.Start()
end


function Dialog18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You don't want to do that. I would turn you over to the Militia as a thief. And if you try to turn me over to them, I will just deny the plan and they will confiscate the goods. But if you work for me, you'll collect a nice fee for retrieving some poor drunkard's discarded junk. It's a winning proposition all around, don't you agree?")
	Dialog.AddOption("You make a good point. Where was that house located?", "Dialog25")
	Dialog.AddOption("Actually, I think I will take this opportunity to depart.")
	Dialog.Start()
end

function Dialog25(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I knew you would see it my way. His house is located on the far west side of Beggar's Court. It is the northernmost door on that wall. Be sure to check under every crate and barrel, even the broken ones.")
	Dialog.AddOption("Just have my money ready.", "Dialog1")
	Dialog.Start()
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Your money will be here waiting for you. You will get it as soon as I get what is mine.")
	Dialog.AddOption("Okay, I will be back soon.")
	Dialog.Start()
	OfferQuest(NPC, Spawn, FindingtheStash)
end

--============================= Quest 2

function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You're back. Did you find the hidden items I asked for?")
	Dialog.AddOption("Yes, I found the stash.", "Dialog4")
	Dialog.AddOption("We'll discuss this later.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, give it to me already! I am paying you for it, after all!")
	Dialog.AddOption("Fine, take it. You could stand to be more polite.", "Dialog6")
	Dialog.Start()
end


function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Bah, this is mostly trash, and certainly isn't worth much. You're lucky that I am an honest person. If not, I would send you on your way empty-handed. Let me look through all of this garbage. Come back when I am done, and I will have more work for you. ")
	Dialog.AddOption("I'm ready for more work now.", "Dialog7")
	Dialog.AddOption("I will see you again shortly then.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You did well on your last assignment. I have more work for you, if you're up to it. I found an interesting note in that bag of junk you sold me which may explain its owner's sudden disappearance.")
	Dialog.AddOption("I'm up for it. What sort of note?", "Dialog28")
	Dialog.AddOption("I am busy right now. I'll check back later to see if you still need assistance.")
	Dialog.Start()
end

function Dialog28(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The note mentions a shady cohort who has documents regarding the last war Freeport saw. These documents apparently contradict the history of our great Overlord's triumph. I want you to go take the documents from him, by any means necessary.")
	Dialog.AddOption("Any means necessary? Why don't you just turn him in to the Militia?", "Dialog5")
	Dialog.AddOption("That sounds a bit dangerous. Maybe I will come back later.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That thought did cross my mind. But I'm interested in seeing what the note says, and this will be a good chance for you to prove your loyalty to Freeport. You should go now. According to my information, this shady fellow is in the far southeast room here in Beggar's Court.")
	Dialog.AddOption("Do not worry, I will get the documents for you.", "Dialog31")
	Dialog.Start()
end

function Dialog31(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The sooner you get back, the better off everyone will be. So get going!")
	Dialog.AddOption("I will be back soon.")
	Dialog.Start()
	OfferQuest(NPC, Spawn, SavingHistory)
end

--============================== Quest 3

function Dialog14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You're back, and I see some papers in your hands. I assume those are the documents I requested. Hand them over so I can take a look.")
	Dialog.AddOption("Why are you so interested in a traitor's words?", "Dialog23")
	Dialog.AddOption("I will return later.")
	Dialog.Start()
end

function Dialog23(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Remember, we must know our enemies if we are to adapt and overcome them. Now, give me a moment to look these over. Hmm... interesting.")
	Dialog.AddOption("Good point. So what is in those documents?", "Dialog17")
	Dialog.Start()
end

function Dialog17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("These papers contradict the truth of our Overlord's great triumph in the Rallosian war. It is well known that he almost single-handedly defeated the enemy, but these documents attempt to undermine that greatness. I will of course turn them over to the proper authorities very soon.")
	Dialog.AddOption("Good. Is there anything else you need a hand with?", "Dialog10")
	Dialog.AddOption("I will be back soon.")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, Gaikichi, it is time for you to learn more about Beggar's Court. I need you to do a bit more leg work for me.")
	Dialog.AddOption("What might that be?", "Dialog11")
	Dialog.AddOption("I will return later.")
	Dialog.Start()
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Beggar's Court is more than what it seems at first glance. You see, this is actually the hottest black market in all of Freeport. If you have the right connections, you can find almost anything you want here. It is also a great place to get rid of trinkets you no longer want.")
	Dialog.AddOption("I would not have guessed it from the look of the place.", "Dialog24")
	Dialog.AddOption("That is good to know.")
	Dialog.Start()
end

function Dialog24(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good, that's the way we want it to seem. To help you learn your way around, I have a package I need you to deliver for me. The buyer is a man named Durio Dexus. As you run south through Beggar's Court, you will find him just beyond the southeastern stair case. Be careful not to let him fool you... he's a crafty one.")
	Dialog.AddOption("Sounds easy enough.", "Dialog32")
	Dialog.AddOption("No thanks.")
	Dialog.Start()
end

function Dialog32(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Just go sell my package to Durio Dexus. I'll give you a split of the profits. But the longer you take, the smaller your share becomes.")
	Dialog.AddOption("I will be back soon.")
	Dialog.Start()
	OfferQuest(NPC, Spawn, BigTroubleBeggarsCourt)
end

--============================== Quest 3 - Step 3

function Dialog30(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You are back, but it doesn't look like you have either my goods or my money.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", 0, 0)
	Dialog.AddOption("You are right, I have neither.", "Dialog29")
	Dialog.AddOption("Maybe I will come back later.")
	Dialog.Start()
end

function Dialog29(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Do you realize what happens to people who cross me?")
	Dialog.AddOption("Indeed I do. I heard all about your ratonga friend.", "Dialog8")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What? So, you think you're smart, do you? You will end up just like him.")
	Dialog.AddOption("I doubt that. The Freeport Militia was quite pleased to receive those documents.", "Dialog2")
	Dialog.AddOption("No problem, I'll leave.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You trying to threaten me? Are you saying you'll turn me over to the Freeport Militia?")
	Dialog.AddOption("I don't need to threaten you. But you should know that the Militia will be watching out for me.")
	Dialog.AddOption("I don't want trouble. I'll leave you alone.")
	Dialog.Start()
end

--============================= Quest 4 Step 1 

function Dialog16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("So, you're using the Militia to protect yourself and raise your standing with the Overlord at the same time. Quite clever, I must admit. I should have stuck to hiring the lesser races. You're lucky that my most important rule is not to get caught crossing the Overlord. I guess I will have to drop this matter for now.")
	Dialog.AddOption("I knew you would see it my way. Goodbye, Alucius.")
	Dialog.Start()
end
