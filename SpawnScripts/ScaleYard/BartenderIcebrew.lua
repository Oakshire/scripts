--[[
	Script Name		: SpawnScripts/ScaleYard/BartenderIcebrew.lua
	Script Purpose	: Bartender Icebrew
	Script Author	: torsten
	Script Date		: 2022.07.11
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local BronaThralls = 5630
local IcebrewSecretRecipe = 5692
local BlindTasteTest = 5693

function spawn(NPC)
    ProvidesQuest(NPC, IcebrewSecretRecipe)
    ProvidesQuest(NPC, BlindTasteTest)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if not HasQuest(Spawn, IcebrewSecretRecipe) and not HasCompletedQuest(Spawn, IcebrewSecretRecipe) then
        Dialog11(NPC, Spawn)
    end
    if HasCompletedQuest(Spawn, IcebrewSecretRecipe) then
        if not HasQuest(Spawn, BlindTasteTest) and not HasCompletedQuest(Spawn, BlindTasteTest) then
            Dialog10(NPC, Spawn)
        end
    end
    if GetQuestStep(Spawn, IcebrewSecretRecipe) == 2 then
        Dialog3(NPC, Spawn)
        SetStepComplete(Spawn, IcebrewSecretRecipe, 2)
    end
    if GetQuestStep(Spawn, BlindTasteTest) == 2 then
        SetStepComplete(Spawn, BlindTasteTest, 2)
    end
    if HasQuest(Spawn, BronaThralls) and not HasCompletedQuest(Spawn, BronaThralls) then
        SetStepComplete(Spawn, BronaThralls, 1)
    end
    Dialog7(NPC, Spawn)
end


function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What are you drinking? Ya better not make it one of those sissy drinks.")
	Dialog.AddVoiceover("voiceover/english/bartender_icebrew/fprt_hood06/mer_icebrew.mp3", 3301168939, 3443300522)
	Dialog.AddOption("Let me see what you have.")
	Dialog.Start()
end

--====================Quest 1

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What are you drinking? Ya better not make it one of those sissy drinks.")
	Dialog.AddVoiceover("voiceover/english/bartender_icebrew/fprt_hood06/mer_icebrew.mp3", 3301168939, 3443300522)
	Dialog.AddOption("What's the strongest drink you have on tap?", "Dialog2")
	Dialog.AddOption("Let me see what you have.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'll give ya a belt of my special homebrew, Wheat Rust Stout. Its bite is so strong you'll think a bear is maulin' ya. Ah, yes ... nothin' like knockin' back a few rounds and slaughtering anyone who gets in your face!")
	Dialog.AddVoiceover("voiceover/english/bartender_icebrew/fprt_hood06/quests/bartendericebrew/icebrew_x1_initial.mp3", 323297829, 4256312876)
	Dialog.AddOption("Pour me one!", "Dialog5")
	Dialog.AddOption("Never mind. I'm the type who likes a fine wine.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, now, that's a problem. Just enough of the brew is left for one mug, and I don't have rust to make another batch. I ran out of the liquid rust a few hours back and can't make another batch of brew until I get more.")
	Dialog.AddVoiceover("voiceover/english/bartender_icebrew/fprt_hood06/quests/bartendericebrew/icebrew_x1_initial2.mp3", 3007403188, 2444158205)
	Dialog.AddOption("You actually use rust?", "Dialog4")
	Dialog.AddOption("Then I guess I'll look at what else you have.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Are you dense, fool? Didn't I say I use it? Me dad brewed ale using molding wheat, but I found a better, tastier way. If you go and get me more rust, I'll give you some coin and throw in a brew on the house. Are you up for the task?")
	Dialog.AddVoiceover("voiceover/english/bartender_icebrew/fprt_hood06/quests/bartendericebrew/icebrew_x1_initial3.mp3", 2459588237, 3538627268)
	Dialog.AddOption("I sure am. Where should I look for it?", "Dialog12")
	Dialog.AddOption("No, I'm too busy. Maybe another time.")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Go to the Sunken City and slay the rust monsters that lurk there. Kill the beasts and squeeze them with all your might. Out of their bodies should pour about a jar's worth of pure, liquid rust. Come back with as many jars as you can, and we have a deal.")
	Dialog.AddVoiceover("voiceover/english/bartender_icebrew/fprt_hood06/quests/bartendericebrew/icebrew_x1_accept.mp3", 2282916525, 4054783281)
	Dialog.AddOption("I can do this.", "Dialog9")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("My customers are thirsty! You better get my liquid rust or I'll crush your skull!")
	Dialog.AddVoiceover("voiceover/english/bartender_icebrew/fprt_hood06/mer_bartender_icebrew_multhail3_c40a6388.mp3", 3143807370, 1008038806)
	Dialog.AddOption("All right!")
	Dialog.Start()
	OfferQuest(NPC, Spawn, IcebrewSecretRecipe)
end

--===== Quest 1 Step 2

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What are you drinking? Ya better not make it one of those sissy drinks.")
	Dialog.AddVoiceover("voiceover/english/bartender_icebrew/fprt_hood06/mer_icebrew.mp3", 3301168939, 3443300522)
	Dialog.AddOption("I have ten jars of liquid rust.", "Dialog6")
	Dialog.AddOption("Let me see what you have.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Aye, you brought my rust. That's enough for a couple kegs. All it takes is one stein of the stuff and your eyes go blurrier than a warthog in heat! That's why it's my specialty, makes it easy to kick out these awful, drunk lugs when I close up -- they never see the club coming.  Here's your coin and your round on the house.")
	Dialog.AddVoiceover("voiceover/english/bartender_icebrew/fprt_hood06/quests/bartendericebrew/icebrew_x1_finish.mp3", 4199522555, 1288818625)
	Dialog.AddOption("Thanks!")
	Dialog.Start()
end

--============Quest 2

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What are you drinking? Ya better not make it one of those sissy drinks.")
	Dialog.AddVoiceover("voiceover/english/bartender_icebrew/fprt_hood06/mer_icebrew.mp3", 3301168939, 3443300522)
	Dialog.AddOption("Were you able to make any more of that Wheat Rust Stout?", "Dialog8")
	Dialog.AddOption("Let me see what you have.")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Aye, I just brewed another batch, but I don't know if it's any good. If it's not perfect then my name isn't Icebrew! Never let anyone say that the Icebrews serve up a weak brew. Perhaps you can help me out again, eh?")
	Dialog.AddVoiceover("voiceover/english/bartender_icebrew/fprt_hood06/quests/bartendericebrew/icebrew_x2_initial.mp3", 3718305704, 4001640660)
	Dialog.AddOption("Sure. What do you want me to do?", "Dialog13")
	Dialog.AddOption("Sorry, I'm a bit busy right now.")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Take this tankard of Stout and head to Longshadow Alley where those prissy little Dark Elves live. The Iksar at my bar drink some strange things, so I can't use them to gauge the quality of my brew.  Find one of those little purple freaks in a tavern and offer him a taste.  Let me know how he likes it. Got it?")
	Dialog.AddVoiceover("voiceover/english/bartender_icebrew/fprt_hood06/quests/bartendericebrew/icebrew_x2_accept.mp3", 1018004755, 1842224270)
	Dialog.AddOption("Will do. I'll let you know what he thinks.")
	Dialog.Start()
	OfferQuest(NPC, Spawn, BlindTasteTest)
end


