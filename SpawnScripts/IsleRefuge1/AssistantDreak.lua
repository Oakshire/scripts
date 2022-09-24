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
if not HasQuest(Player,Cellar) and not HasCompletedQuest(Player,Cellar) or GetQuestStep(Player,Cellar)<=9 then
Dialog1(NPC,Player)
end
end

function Dialog1(NPC, Player)
		FaceTarget(NPC, Player)
		Dialog.New(NPC, Player)
		Dialog.AddDialog("Oh, hello there. Welcome to the mage tower.  If you're looking for masters Mizan or Malvonicus, they can both be found upstairs.  If you've come to use the workshop ... well, I'm afraid you're out of luck for the time being.")
		Dialog.AddVoiceover("voiceover/english/assistant_dreak/tutorial_island02/assistant_dreak001.mp3",2907679285,3779656812)
		Dialog.AddEmote("hello")
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
		Dialog.AddEmote("pout")
        
		Dialog.AddOption("What's this workshop for anyways?","ItsMyFault")
		Dialog.AddOption("Ok, thanks.")
		Dialog.Start()
end

function ItsMyFault(NPC, Player)
		FaceTarget(NPC, Player)
		Dialog.New(NPC, Player)
		Dialog.AddDialog("For crafting, of course!  With the right recipes and materials, you can make just about anything you want down there, from metal working to brewing.  Say... if you're interested in learning more about crafting yourself, I'd be willing to make you a deal.  I'll give you free, unlimited access to the workshop, if you'd be willing to clean up the place.  What do you say?")
		Dialog.AddVoiceover("voiceover/english/assistant_dreak/tutorial_island02/assistant_dreak003.mp3",1218168009,4084296157)
		Dialog.AddEmote("nod")
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
		Dialog.AddEmote("thanks")
		Dialog.AddOption("What's that?","WhatsNext")
		Dialog.Start()
end

function WhatsNext(NPC, Player)
		FaceTarget(NPC, Player)
		Dialog.New(NPC, Player)
		Dialog.AddDialog("It seems that the explosion destroyed the lock on the door to the workshop, and I'll need a new one to replace it.  I asked the blacksmith, Braksan, to make one for me, but he's so backed up repairing arms and weapons for the goblin incursions, that he said it would take at least a week for him to get to it.  I was thinking that perhaps you, being interested in crafting and all, could make at least a spike to hold the entrance closed.")
		Dialog.AddVoiceover("voiceover/english/assistant_dreak/tutorial_island02/assistant_dreak006.mp3",1046698674,1827875757)
		Dialog.AddEmote("tapfoot")
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
end

function respawn(NPC)
	spawn(NPC)
end