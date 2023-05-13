--[[
	Script Name		:	IgnarSteadirt.lua
	Script Purpose	:	Ignar Steadirt
	Script Author	:	Jabantiz
	Script Date		:	08/29/2019
	Script Notes	:	Voiceovers added - 6/10/2022 Dorbin
--]]
require "SpawnScripts/Generic/DialogModule"

local LordGrimrotsScythe = 5522

    local greetingsTable = { "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3",
    						 "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3",
    						 "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3"};

function spawn(NPC)
ProvidesQuest(NPC, LordGrimrotsScythe)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if not HasQuest(Spawn, LordGrimrotsScythe) and not HasCompletedQuest(Spawn, LordGrimrotsScythe) then
    Option0(NPC, Spawn)
    elseif GetQuestStep(Spawn, LordGrimrotsScythe) == 1  or  GetQuestStep(Spawn, LordGrimrotsScythe) == 2 or  GetQuestStep(Spawn, LordGrimrotsScythe) == 3 or GetQuestStep(Spawn, LordGrimrotsScythe) == 4  then
    Reports_Progress(NPC, Spawn)
    elseif GetQuestStep(Spawn, LordGrimrotsScythe) == 6 then
    Reports_Progress2(NPC, Spawn)
    elseif GetQuestStep(Spawn, LordGrimrotsScythe) == 7 and GetQuestStep(Spawn, LordGrimrotsScythe) == 8  then
    Reports_Progress3(NPC, Spawn)
    elseif GetQuestStep(Spawn, LordGrimrotsScythe) == 9 then
    PlayFlavor(NPC, "voiceover/english/ignar_steadirt/antonica/quest/045_dwarf_ignar_steadirt_g1_onstage7_68f3d9e4.mp3", "Well? Have you spoken with the dwarven centurion yet?  His name's Grimbold Steadirt -- you can't miss him, he's near the gates to Firemyst.", "", 1513486151, 2077778983, Spawn)
    elseif HasCompletedQuest(Spawn, LordGrimrotsScythe) then
    Quest_Completed(NPC, Spawn)
    end
end

function Option0(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The great Qeynos Claymore -- folks come from all over to pray here.")
	Dialog.AddVoiceover("voiceover/english/ignar_steadirt/antonica/quests/firemyst/ignar_steadirt_001.mp3", 3940456845, 1439505698)
	Dialog.AddOption("Is that why you are here?", "Option1")
	Dialog.AddOption("Well, not me.  At least, not right now.","refuse")
	Dialog.Start()
end


function Reports_Progress(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Got all three reports for me, eh?")
	Dialog.AddVoiceover("voiceover/english/ignar_steadirt/antonica/quests/firemyst/ignar_steadirt_020.mp3", 3807663927, 1877102207)
    if GetQuestStep(Spawn, LordGrimrotsScythe) == 4 or GetQuestStep(Spawn, LordGrimrotsScythe) == 5  then
	Dialog.AddOption("Yes, I've spoken with your three knights.", "Option5")
    end
    Dialog.AddOption("Not yet,  I'll be back when I've spoken to all three knights.")
	Dialog.Start()
end

function Reports_Progress2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What news do you have?  And speak up, will you?  I can barely hear you with all the noise around this monument!")
	Dialog.AddVoiceover("voiceover/english/ignar_steadirt/antonica/quests/firemyst/ignar_steadirt_018.mp3", 831646540, 4011481449)
	PlayFlavor(NPC, "", "", "listen", 0, 0, Spawn)
	Dialog.AddOption("I fought the Sabertooth rune casters, but found only part of Lord Grimrot's war scythe.", "Option10")
	Dialog.AddOption("Not yet.  I will return when I've done as you asked.")
	Dialog.Start()
end

function Reports_Progress3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes?  Oh, it's you again! Have you gotten the final piece of the scythe?")
	Dialog.AddVoiceover("voiceover/english/ignar_steadirt/antonica/quests/firemyst/ignar_steadirt_019.mp3", 4267108172, 3030270970)
	PlayFlavor(NPC, "", "", "doubletake", 0, 0, Spawn)
    if GetQuestStep(Spawn, LordGrimrotsScythe) == 8 then 
	Dialog.AddOption("I found the remaining piece of Lord Grimrot's scythe.", "Option13")
	end
	Dialog.AddOption("Not yet.  I will continue the fight!")
	Dialog.Start()
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I came here seeking strength to defeat my enemies.")
	Dialog.AddVoiceover("voiceover/english/ignar_steadirt/antonica/quests/firemyst/ignar_steadirt_002.mp3", 2644345501, 1145343451)
	Dialog.AddOption("Who are your enemies?", "Option2")
	Dialog.Start()
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I pray for the strength to conquer the undead, but they are not just my enemies; the undead are the enemies of us all.  Several days ago, patrols were sent to see how our battle against the undead was faring.  And I -- I have the most disagreeable task of all.  I have to stand here and wait for the reports to return.  Me! Standing around waiting when there's undead to cleave! Pah!")
	Dialog.AddVoiceover("voiceover/english/ignar_steadirt/antonica/quests/firemyst/ignar_steadirt_003.mp3", 714312882, 209965713)
	PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
	Dialog.AddOption("Do you need help?", "Option3")
	Dialog.AddOption("Wish I had time to help.  Perhaps later.","refuse2")
	Dialog.Start()
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That's why I'm praying. Perhaps my prayers have been answered.  Are you here to help me?")
	Dialog.AddVoiceover("voiceover/english/ignar_steadirt/antonica/quests/firemyst/ignar_steadirt_004.mp3", 1571069760, 2691480931)
	Dialog.AddOption("I could be persuaded.", "Option4")
	Dialog.AddOption("No, I'd rather not.","refuse1")
	Dialog.Start()
end


function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Excellent. Are you ready to start?")
	Dialog.AddVoiceover("voiceover/english/ignar_steadirt/antonica/quests/firemyst/ignar_steadirt_005.mp3", 346565467, 222391193)
	Dialog.AddOption("Start what?", "offer")
	Dialog.AddOption("No, not right now.","refuse1")
	Dialog.Start()
end


function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Anything interesting?  The last reports were hardly worth waiting for, but a good soldier never lets his guard down -- ever!")
 	Dialog.AddVoiceover("voiceover/english/ignar_steadirt/antonica/quests/firemyst/ignar_steadirt_007.mp3", 2410599990, 3294676277)
   if GetQuestStep(Spawn, LordGrimrotsScythe) == 4 then
	Dialog.AddOption("The gnolls have Lord Grimrot's war scythe and are using it to resurrect him for a new undead battle against Qeynos.", "Dialog22")
	Dialog.AddOption("Morte's a human! You didn't tell me that!", "Dialog29")
    end
    Dialog.AddOption("I'll be right back.")
	Dialog.Start()
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah, yes, Morte.  He's a good lad, if a bit addled.  He really wants to become a blacksmith, but I hate to tell him ... he's already too old for anyone to take him on as an apprentice.  Still, it's good for us to have our dreams, isn't it?  He dreams of fire and tongs, while I dream of returning to battle.")
	Dialog.AddOption("I have the reports, before I forget to tell you.", "Option5")
	Dialog.AddOption("I suppose so.")
	Dialog.Start()
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What!?  Lord Grimrot? It can't be ... Pestilence -- that's his war scythe, found after all these years?  I never credited the gnolls with having any brains, and this proves it! If they go through with this, it could mean another War of Plagues!")
 	Dialog.AddVoiceover("voiceover/english/ignar_steadirt/antonica/quests/firemyst/ignar_steadirt_008.mp3", 4075114721, 1890413048)
	PlayFlavor(NPC, "", "", "boggle", 0, 0, Spawn)
	Dialog.AddOption("What can I do to help you?", "Option8")
	Dialog.AddOption("I'll have to continue this later.")
	Dialog.Start()
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("We must get that scythe at any cost.  A large-scale invasion won't do us any good; they might just try to hurry up whatever it is they're doing.  No, we've got to get a small force to find Pestilence and destroy it. ")
 	Dialog.AddVoiceover("voiceover/english/ignar_steadirt/antonica/quests/firemyst/ignar_steadirt_009.mp3", 1966007191, 2165025805)
	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
	Dialog.AddOption("I'll destroy the scythe.", "Option9")
	Dialog.Start()
end


function Option9(NPC, Spawn)
	SetStepComplete(Spawn, LordGrimrotsScythe, 4)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You might want to bring along some trusted companions, for I'm sure the gnolls will have this thing hidden -- from each other, as well as from outsiders like us!  If they're trying to do some fancy spellwork, their rune casters will be involved.  Watch for their guards too.")
 	Dialog.AddVoiceover("voiceover/english/ignar_steadirt/antonica/quests/firemyst/ignar_steadirt_011.mp3", 2337997349, 1621243577)
	PlayAnimation(NPC, 121)
	Dialog.AddOption("Don't worry -- I will be back.")
	Dialog.Start()
end

function Option10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I wonder whether each group has a piece of the scythe ... that might explain their sudden cooperation:An uneasy truce until they unleash Lord Grimrot.  I'll bet they need each other to get this to work.  And you know this actually ties in with the last reports, of those Darkpaws and Sabertooth gnolls suddenly getting friendly toward each other.")
 	Dialog.AddVoiceover("voiceover/english/ignar_steadirt/antonica/quests/firemyst/ignar_steadirt_012.mp3", 3015059264, 2600919408)
	Dialog.AddOption("So I need to find the other part with the Darkpaws?", "Option11")
	Dialog.Start()end

function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("It looks that way, my friend.  Just as the Sabertooth gnolls protect their rune casters, so do the Darkpaws.  A small group is the best way to achieve success.  And then...")
 	Dialog.AddVoiceover("voiceover/english/ignar_steadirt/antonica/quests/firemyst/ignar_steadirt_013.mp3", 57458037, 1125197577)
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddOption("And then...?", "Option12")
	Dialog.Start()
end

function Option12(NPC, Spawn)
    SetStepComplete(Spawn, LordGrimrotsScythe, 6)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("And then, well, we'll have stopped them, won't we?  Anyway, it's best to take things one step at a time.  We'll deal with what comes after we destroy the entire scythe -- if there is anything, mind you. The undead have a way of coming back to ... well, you know...")
 	Dialog.AddVoiceover("voiceover/english/ignar_steadirt/antonica/quests/firemyst/ignar_steadirt_014.mp3", 466957863, 1448898790)
	Dialog.AddOption("...haunt us.  Yes, I know.  I'll take care of the scythe.")
	Dialog.Start()
end

function Option13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That's one less thing for me to worry about. Thank you!  The undead continue to stir, though, which disturbs me.  You're sure you destroyed all pieces of Pestilence?")
 	Dialog.AddVoiceover("voiceover/english/ignar_steadirt/antonica/quests/firemyst/ignar_steadirt_015.mp3", 2386335568, 649326615)
	Dialog.AddOption("Of course.", "Option14")
	Dialog.AddOption("Well...no, I'm not sure.", "Option14")
	Dialog.Start()
end

function Option14(NPC, Spawn)
    SetStepComplete(Spawn, LordGrimrotsScythe, 8)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Either way, there's no denying that the undead are restless over in Firemyst Gully -- that's where untold numbers of 'em were buried in the War of Plagues.  In fact, maybe you could go over and see if the dwarven centurion at the Firemyst gate needs anything.  I'm afraid my lot is to stay here.  Go find glory in battle, farewell.")
 	Dialog.AddVoiceover("voiceover/english/ignar_steadirt/antonica/quests/firemyst/ignar_steadirt_016.mp3", 2368455288, 1132389514)
	Dialog.AddOption("I'll take a look.")
	Dialog.Start()
end

function Quest_Completed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I keep telling myself this is an important part of the battle -- to stay here and gather data.  Ah, well.  I appreciate your visits.")
    PlayFlavor(NPC,"","","greetingsTable", 0, 0,Spawn)
	PlayAnimation(NPC, 121)
	Dialog.AddOption("Farewell.")
	Dialog.Start()
end





function refuse1(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That is a shame. Please leave me to my prayers.")
 	Dialog.AddVoiceover("voiceover/english/ignar_steadirt/antonica/quest/045_dwarf_ignar_steadirt_g1_shame_b6fbc6ba.mp3", 2730895874, 3053314534)
	Dialog.AddOption("Farewell.")
	Dialog.Start()
end

function refuse2(NPC, Spawn)
PlayFlavor(NPC, "", "Hmm, I'll keep praying then. Good day.", "", 1689589577, 4560189, Spawn)
end

function refuse3(NPC, Spawn)
PlayFlavor(NPC, "", "Return when you are ready, but be quick. They grow stronger by the hour.", "", 1689589577, 4560189, Spawn)
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, LordGrimrotsScythe)
end