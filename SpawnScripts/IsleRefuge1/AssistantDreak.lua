--[[
    Script Name    : SpawnScripts/IsleRefuge1/AssistantDreak.lua
    Script Author  : Ememjr
    Script Date    : 2022.03.27 09:03:56
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local Cellar =5749


function spawn(NPC)
    ProvidesQuest(NPC,Cellar)
	SetPlayerProximityFunction(NPC, 11, "InRange", "LeaveRange")
end

function InRange(NPC,Player)
if not HasQuest(Player,Cellar) and not HasCompletedQuest(Player,Cellar)   then
    PlayFlavor(NPC,"voiceover/english/assistant_dreak/tutorial_island02/030_wizard_assistant_dreak_aoicallout_e3958bf.mp3","Such a mess! Malvonicus is going to kill me!","grumble",541493613,293203409, Spawn)
end
end

function hailed(NPC, Player)
if not HasQuest(Player,Cellar) and not HasCompletedQuest(Player,Cellar) or GetQuestStep(Player,Cellar)<=8 and not HasCompletedQuest(Player,Cellar) then
Dialog1(NPC,Player)
elseif GetQuestStep(Player, Cellar)==9 or GetQuestStep(Player, Cellar)==10 then
Dialog2(NPC,Player)
elseif GetQuestStep(Player, Cellar)==11  then
Dialog3(NPC,Player)
elseif HasCompletedQuest(Player, Cellar)  then
Finished(NPC,Player)
end
end

function Dialog1(NPC, Player)
		FaceTarget(NPC, Player)
		Dialog.New(NPC, Player)
		Dialog.AddDialog("Oh, hello there. Welcome to the mage tower.  If you're looking for masters Mizan or Malvonicus, they can both be found upstairs.  If you've come to use the workshop ... well, I'm afraid you're out of luck for the time being.")
		Dialog.AddVoiceover("voiceover/english/assistant_dreak/tutorial_island02/assistant_dreak001.mp3",2907679285,3779656812)
        PlayFlavor(NPC,"","","hello",0,0,Player)
        if not HasQuest(Player,Cellar) and not HasCompletedQuest(Player,Cellar)   then
		Dialog.AddOption("Why, what happened to the workshop?","WhatHappened")
		end
        if  GetQuestStep(Player,Cellar)==8 then	
		Dialog.AddOption("I cleaned up the workshop.","CleanedUp")
        end        
		Dialog.AddOption("Ok, thanks.")
		Dialog.Start()
end



function WhatHappened(NPC, Player)
		FaceTarget(NPC, Player)
		Dialog.New(NPC, Player)
		Dialog.AddDialog("It's all my fault, really.  I could've sworn I wrote down the directions for that alacrity potion correctly.  I mean, honestly, who could've expected such a spectacular explosion?  Now the lab's a mess, and no one can use the workshop.  I can't even clean it up now, because I'm supposed to be welcoming the refugees.")
		Dialog.AddVoiceover("voiceover/english/assistant_dreak/tutorial_island02/assistant_dreak002.mp3",402125016,2910805792)
        PlayFlavor(NPC,"","","pout",0,0,Player)
        
		Dialog.AddOption("What's this workshop for anyways?","ItsMyFault")
		Dialog.AddOption("Ok, thanks.")
		Dialog.Start()
end

function ItsMyFault(NPC, Player)
		FaceTarget(NPC, Player)
		Dialog.New(NPC, Player)
		Dialog.AddDialog("For crafting, of course!  With the right recipes and materials, you can make just about anything you want down there, from metal working to brewing.  Say... if you're interested in learning more about crafting yourself, I'd be willing to make you a deal.  I'll give you free, unlimited access to the workshop, if you'd be willing to clean up the place.  What do you say?")
		Dialog.AddVoiceover("voiceover/english/assistant_dreak/tutorial_island02/assistant_dreak003.mp3",1218168009,4084296157)
        PlayFlavor(NPC,"","","nod",0,0,Player)
		Dialog.AddOption("All right, it's a deal.","ForCrafting")
		Dialog.AddOption("I've got my hands full on this island already.")
		Dialog.Start()
end

function ForCrafting(NPC, Player)
    FaceTarget(NPC,Player)
    OfferQuest(NPC,Player,Cellar)
end


function CleanedUp(NPC, Player)
		FaceTarget(NPC, Player)
		Dialog.New(NPC, Player)
		Dialog.AddDialog("That you did!  I happened to poke my head down there and I must say that you've done a great job.  Now there's just one more thing I need from you, and then you can feel free to use the place all you want.")
		Dialog.AddVoiceover("voiceover/english/assistant_dreak/tutorial_island02/assistant_dreak005.mp3",1034189295,1232169339)
        PlayFlavor(NPC,"","","nod",0,0,Player)
		Dialog.AddOption("What's that?","WhatsNext")
		Dialog.Start()
end

function WhatsNext(NPC, Player)
		FaceTarget(NPC, Player)
		Dialog.New(NPC, Player)
		Dialog.AddDialog("It seems that the explosion destroyed the lock on the door to the workshop, and I'll need a new one to replace it.  I asked the blacksmith, Braksan, to make one for me, but he's so backed up repairing arms and weapons for the goblin incursions, that he said it would take at least a week for him to get to it.  I was thinking that perhaps you, being interested in crafting and all, could make at least a spike to hold the entrance closed.")
		Dialog.AddVoiceover("voiceover/english/assistant_dreak/tutorial_island02/assistant_dreak006.mp3",1046698674,1827875757)
        PlayFlavor(NPC,"","","tapfoot",0,0,Player)
		Dialog.AddOption("Sure, but how?","QuestUpdate8")
		Dialog.Start()
end

function QuestUpdate8(NPC, Player)
		FaceTarget(NPC, Player)
		Dialog.New(NPC, Player)
		Dialog.AddDialog("First, you must gather all the components required to make the spike. I'll provide you with the recipe and ingredients required.  Everything you need can be found on this island.  Once you have them all, take them to the forge in the workshop and craft the spike itself.  Return the lock to me once it's complete.")
		Dialog.AddVoiceover("voiceover/english/assistant_dreak/tutorial_island02/assistant_dreak007.mp3",3742209773,3742478459)
		Dialog.AddOption("All right, I'll be back with your lock.")
		Dialog.Start()
        SetStepComplete(Player, Cellar,8)
        if GetTradeskillLevel(Player)<2 then
        SetTradeskillLevel(Player,2)
        SetTradeskillClass(Player,1)
	    SendMessage(Player, "You are now an Artisan!")
        SendPopUpMessage(Player, "You are now an Artisan!", 200, 200, 200)            
        end
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog2(NPC,Player)
    choice = MakeRandomInt(1,3)
    if choice == 1 then
        PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_1_1034.mp3","I hope to become a powerful mage one day, but... it's a difficult journey.","pout",0,0,Player)
    elseif choice == 2 then
        PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3","Hello there! Do you need some candles?","hello",0,0,Player)
    elseif choice == 3 then
        PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_3_1034.mp3","I need to finish these candles for Mizan. You should speak to him if you're seeking to learn the ways of a mage.","nod",0,0,Player)
    end
end

function Dialog3(NPC, Player)
		FaceTarget(NPC, Player)
		Dialog.New(NPC, Player)
		Dialog.AddDialog("Well done!  The masters will be so pleased with me... err, you I mean!  As promised, you're welcome to use the workshop for all of your crafting needs for as long as you stay on the island.")
		Dialog.AddVoiceover("voiceover/english/assistant_dreak/tutorial_island02/assistant_dreak008.mp3",2753065662,90696178)
        PlayFlavor(NPC,"","","happy",0,0,Player)
        if GetTradeskillLevel(Player)<3 then
        SetTradeskillLevel(Player,3)
        end
		Dialog.AddOption("Thanks.")
		Dialog.Start()
        SetStepComplete(Player, Cellar,11)
end

function Finished(NPC, Player)
		FaceTarget(NPC, Player)
        PlayFlavor(NPC,"voiceover/english/assistant_dreak/tutorial_island02/030_wizard_assistant_dreak_quest_completed_e3b1aced.mp3","Thanks for all your help!  Make sure to clean up when you're done in the cellar.","thanks",1096069834,205718440, Spawn)
end
--[[



(1113153331)[Sun Apr 10 13:15:31 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says to you,"Oh, hello there. Welcome to the mage tower.  If you're looking for masters Mizan or Malvonicus, they can both be found upstairs.  If you've come to use the workshop ... well, I'm afraid you're out of luck for the time being."
(1113153334)[Sun Apr 10 13:15:34 2005] You say to Assistant Dreak,"I cleaned up the workshop."
(1113153334)[Sun Apr 10 13:15:34 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says to you,"That you did!  I happened to poke my head down there and I must say that you've done a great job.  Now there's just one more thing I need from you, and then you can feel free to use the place all you want."
(1113153335)[Sun Apr 10 13:15:35 2005] You say to Assistant Dreak,"What's that?"
(1113153335)[Sun Apr 10 13:15:35 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says to you,"It seems that the explosion destroyed the lock on the door to the workshop, and I'll need a new one to replace it.  I asked the blacksmith, Braksan, to make one for me, but he's so backed up repairing arms and weapons for the goblin incursions, that he said it would take at least a week for him to get to it.  I was thinking that perhaps you, being interested in crafting and all, could make at least a spike to hold the entrance closed."
(1113153335)[Sun Apr 10 13:15:35 2005] You say to Assistant Dreak,"Sure, but how?"
(1113153335)[Sun Apr 10 13:15:35 2005] Your quest journal has been updated.
(1113153335)[Sun Apr 10 13:15:35 2005] Your quest journal has been updated.
(1113153335)[Sun Apr 10 13:15:35 2005] You gain tradeskill experience!
(1113153335)[Sun Apr 10 13:15:35 2005] Your tradeskill level is now 2.
(1113153335)[Sun Apr 10 13:15:35 2005] Recipe: "Tin Bar" put in recipe book.
(1113153335)[Sun Apr 10 13:15:35 2005] Recipe: "Tin Spike" put in recipe book.
(1113153335)[Sun Apr 10 13:15:35 2005] Recipe: "Roasted Barley" put in recipe book.
(1113153335)[Sun Apr 10 13:15:35 2005] Recipe: "White Tea Leaf" put in recipe book.
(1113153335)[Sun Apr 10 13:15:35 2005] Recipe: "Black Coffee" put in recipe book.
(1113153335)[Sun Apr 10 13:15:35 2005] Recipe: "Refine Nutmeg" put in recipe book.
(1113153335)[Sun Apr 10 13:15:35 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says to you,"First, you must gather all the components required to make the spike. I'll provide you with the recipe and ingredients required.  Everything you need can be found on this island.  Once you have them all, take them to the forge in the workshop and craft the spike itself.  Return the lock to me once it's complete."
(1113153336)[Sun Apr 10 13:15:36 2005] You say to Assistant Dreak,"All right, I'll be back with your lock."


(1113153534)[Sun Apr 10 13:18:54 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I hope to become a powerful mage one day, but... it's a difficult journey."
(1113153538)[Sun Apr 10 13:18:58 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"Hello there! Do you need some candles?"
(1113153539)[Sun Apr 10 13:18:59 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"Hello there! Do you need some candles?"
(1113153540)[Sun Apr 10 13:19:00 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I hope to become a powerful mage one day, but... it's a difficult journey."
(1113153541)[Sun Apr 10 13:19:01 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I hope to become a powerful mage one day, but... it's a difficult journey."
(1113153541)[Sun Apr 10 13:19:01 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I need to finish these candles for Mizan. You should speak to him if you're seeking to learn the ways of a mage."
(1113153543)[Sun Apr 10 13:19:03 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I need to finish these candles for Mizan. You should speak to him if you're seeking to learn the ways of a mage."
(1113153543)[Sun Apr 10 13:19:03 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I hope to become a powerful mage one day, but... it's a difficult journey."
(1113153543)[Sun Apr 10 13:19:03 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"Hello there! Do you need some candles?"
(1113153544)[Sun Apr 10 13:19:04 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I hope to become a powerful mage one day, but... it's a difficult journey."
(1113153544)[Sun Apr 10 13:19:04 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"Hello there! Do you need some candles?"
(1113153545)[Sun Apr 10 13:19:05 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"Hello there! Do you need some candles?"
(1113153545)[Sun Apr 10 13:19:05 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"Hello there! Do you need some candles?"
(1113153547)[Sun Apr 10 13:19:07 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I need to finish these candles for Mizan. You should speak to him if you're seeking to learn the ways of a mage."
(1113153548)[Sun Apr 10 13:19:08 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"Hello there! Do you need some candles?"
(1113153548)[Sun Apr 10 13:19:08 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I need to finish these candles for Mizan. You should speak to him if you're seeking to learn the ways of a mage."
(1113153548)[Sun Apr 10 13:19:08 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I hope to become a powerful mage one day, but... it's a difficult journey."
(1113153549)[Sun Apr 10 13:19:09 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I need to finish these candles for Mizan. You should speak to him if you're seeking to learn the ways of a mage."
(1113153549)[Sun Apr 10 13:19:09 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"Hello there! Do you need some candles?"
(1113153549)[Sun Apr 10 13:19:09 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I hope to become a powerful mage one day, but... it's a difficult journey."
(1113153549)[Sun Apr 10 13:19:09 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I need to finish these candles for Mizan. You should speak to him if you're seeking to learn the ways of a mage."
(1113153550)[Sun Apr 10 13:19:10 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"Hello there! Do you need some candles?"
(1113153551)[Sun Apr 10 13:19:11 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"Hello there! Do you need some candles?"
(1113153551)[Sun Apr 10 13:19:11 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I need to finish these candles for Mizan. You should speak to him if you're seeking to learn the ways of a mage."
(1113153552)[Sun Apr 10 13:19:12 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"Hello there! Do you need some candles?"
(1113153552)[Sun Apr 10 13:19:12 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I need to finish these candles for Mizan. You should speak to him if you're seeking to learn the ways of a mage."
(1113153554)[Sun Apr 10 13:19:14 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I need to finish these candles for Mizan. You should speak to him if you're seeking to learn the ways of a mage."
(1113153554)[Sun Apr 10 13:19:14 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I hope to become a powerful mage one day, but... it's a difficult journey."
(1113153554)[Sun Apr 10 13:19:14 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I need to finish these candles for Mizan. You should speak to him if you're seeking to learn the ways of a mage."
(1113153555)[Sun Apr 10 13:19:15 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I need to finish these candles for Mizan. You should speak to him if you're seeking to learn the ways of a mage."
(1113153556)[Sun Apr 10 13:19:16 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"Hello there! Do you need some candles?"
(1113153557)[Sun Apr 10 13:19:17 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"Hello there! Do you need some candles?"
(1113153558)[Sun Apr 10 13:19:18 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I hope to become a powerful mage one day, but... it's a difficult journey."
(1113153559)[Sun Apr 10 13:19:19 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"Hello there! Do you need some candles?"
(1113153559)[Sun Apr 10 13:19:19 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I need to finish these candles for Mizan. You should speak to him if you're seeking to learn the ways of a mage."
(1113153559)[Sun Apr 10 13:19:19 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I hope to become a powerful mage one day, but... it's a difficult journey."
(1113153560)[Sun Apr 10 13:19:20 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I need to finish these candles for Mizan. You should speak to him if you're seeking to learn the ways of a mage."
(1113153562)[Sun Apr 10 13:19:22 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"Hello there! Do you need some candles?"
(1113153562)[Sun Apr 10 13:19:22 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I need to finish these candles for Mizan. You should speak to him if you're seeking to learn the ways of a mage."
(1113153563)[Sun Apr 10 13:19:23 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"Hello there! Do you need some candles?"
(1113153563)[Sun Apr 10 13:19:23 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I hope to become a powerful mage one day, but... it's a difficult journey."
(1113153566)[Sun Apr 10 13:19:26 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I need to finish these candles for Mizan. You should speak to him if you're seeking to learn the ways of a mage."
(1113153566)[Sun Apr 10 13:19:26 2005] \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says,"I need to finish these candles for Mizan. You should speak to him if you'r


 Your quest journal has been updated.
 You gain tradeskill experience!
Your tradeskill level is now 3.
Your quest journal has been updated.
 \aNPC 117481 Assistant Dreak:Assistant Dreak\/a says to you,"Well done!  The masters will be so pleased with me... err, you I mean!  As promised, you're welcome to use the workshop for all of your crafting needs for as long as you stay on the island."
 You say to Assistant Dreak,"Thanks."]]--