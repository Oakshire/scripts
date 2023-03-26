--[[
    Script Name    : SpawnScripts/Nektulos/DaisyWinterhope.lua
    Script Author  : Premierio015
    Script Date    : 2023.03.23 09:03:29
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local MaidForTheMistPartI = 5793

function spawn(NPC)
 ProvidesQuest(NPC, MaidForTheMistPartI)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, MaidForTheMistPartI) and not HasCompletedQuest(Spawn, MaidForTheMistPartI) then
    Option0(NPC, Spawn)
    elseif GetQuestStep(Spawn, MaidForTheMistPartI) == 1 or GetQuestStep(Spawn, MaidForTheMistPartI) == 2  then
    Progress(NPC, Spawn)
 elseif GetQuestStep(Spawn, MaidForTheMistPartI) == 3 or GetQuestStep(Spawn, MaidForTheMistPartI) == 4 then
     Progress3(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, MaidForTheMistPartI) then
     PlayFlavor(NPC, "voiceover/english/daisy_winterhope/nektulos/quest/sea_of_mist/daisy_winterhope_iscompletedquest1_713506fb.mp3", "The Maid for the Mist is quite a ship, isn't she?", "", 3723150789, 3507860620, Spawn)
end
    end

function Option0(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	     Dialog.AddVoiceover("voiceover/english/daisy_winterhope/hallmark/sea_of_mist/winterhope_dialog000.mp3", 4292848348, 1971351352)
    Dialog.AddOption("That depends; what makes it worthwhile?", "Option1")
    Dialog.AddOption("Just passing through.")
    	Dialog.AddDialog("Are you looking for something worthwhile to do?  Or are you just passing by and being polite?")
    	Dialog.Start()    
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    Dialog.AddVoiceover("voiceover/english/daisy_winterhope/hallmark/sea_of_mist/winterhope_dialog001.mp3" , 1343801945, 1370855896)
	Dialog.AddOption("Not in any detail.  What is it?", "Option2")
	Dialog.AddOption("I've heard more than enough, thanks, but no thanks.")
		Dialog.AddDialog("You see my vessel off shore there, the \"Maid for the Mist?\"  I'm making her ship-shape for another perilous journey.  This time, to the Sea of Mist.  Ever heard tell of the Sea of Mist?  Hmmm?")
	Dialog.Start()
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
   Dialog.AddVoiceover("voiceover/english/daisy_winterhope/hallmark/sea_of_mist/winterhope_dialog002.mp3" , 4072677891, 2389434454)
	Dialog.AddOption("(continue)", "Option3")
		Dialog.AddOption("I don't have time for stories at the moment.")
	Dialog.AddDialog("A long time ago, afore the world was all tore up in the Shattering, Halflings like me lived in a beautiful place called the Misty Thicket.  A real nice spot it was.  Then everything changed.")
	Dialog.Start()
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
     Dialog.AddVoiceover("voiceover/english/daisy_winterhope/hallmark/sea_of_mist/winterhope_dialog003.mp3", 4284841395, 232118033)
	Dialog.AddOption("There's a lot of fog?", "Option4")
	Dialog.AddOption("I don't have time for this.")
	Dialog.AddDialog("Now there ain't as many Halflings as once was, and the Thicket came to be an island: the Enchanted Lands.  All around the Enchanted Lands is the Sea of Mist.  You can kind of guess how it got its name.")
	Dialog.Start()
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    Dialog.AddVoiceover("voiceover/english/daisy_winterhope/hallmark/sea_of_mist/winterhope_dialog004.mp3", 1475216550, 442077487)
	Dialog.AddOption("Your ship will go through the Sea of Mist?", "Option5")
		Dialog.AddOption("Good luck to you.")
	Dialog.AddDialog("Yep, fog and mist that's so thick, you could cut it with a blade.  That's not the only reason it's dangerous, though.  But I gotta know what's on the other side.  I gotta get my ship ready to go.")
	Dialog.Start()
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
     Dialog.AddVoiceover("voiceover/english/daisy_winterhope/hallmark/sea_of_mist/winterhope_dialog005.mp3", 3310931020, 634373134)
	Dialog.AddOption("Sure, count me in.", "offer")
	Dialog.AddOption("Sounds a bit risky.  Perhaps later.")
	Dialog.AddDialog("All I need's a few more things and my shipwright can finish the job.  Whaddya say, can you help me get a few odds and ends?  If you help me out, I'll make sure you can get there and back on any of my ships.")
	Dialog.Start()
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    Dialog.AddVoiceover("voiceover/english/daisy_winterhope/hallmark/sea_of_mist/winterhope_dialog009.mp3", 1416362062, 802909289)
	Dialog.AddOption("What do you need now?", "Option7")
		Dialog.AddOption("Perhaps later.")
	Dialog.AddDialog("Let me see! Let me see! Ahhhh ...  Perfect!  You done a great job!  Now, maybe you could do just one more thing for me?")
	Dialog.Start()
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
     Dialog.AddVoiceover("voiceover/english/daisy_winterhope/hallmark/sea_of_mist/winterhope_dialog010.mp3", 3773144692, 2188381399)
	Dialog.AddOption("Leaks!?", "Option8")
		Dialog.AddOption("I've no desire to end up at the bottom of the sea.")
	Dialog.AddDialog("This one's pretty easy.  I'm sealing up a few leaks...")
	Dialog.Start()
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
     Dialog.AddVoiceover("voiceover/english/daisy_winterhope/hallmark/sea_of_mist/winterhope_dialog011.mp3", 3544729025, 2906249482)
	Dialog.AddOption("How fortunate.  How many will you need?", "Option9")
	Dialog.AddOption("I haven't got time for this right now.")
	Dialog.AddDialog("Now, now, they're minor leaks.  What works real well is to tighten up some of the connections with reinforcements of bear sinew.  And the best bear sinews happen to be right here in Nektulos.  How lucky is that?")
	Dialog.Start()
end

function Option9(NPC, Spawn)
      SetStepComplete(Spawn, MaidForTheMistPartI, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	 Dialog.AddVoiceover("voiceover/english/daisy_winterhope/hallmark/sea_of_mist/winterhope_dialog012.mp3", 3115159860, 1253570402)
    Dialog.AddOption("Ready and willing. I will return with thirteen ash owlbear sinews.")
	Dialog.AddOption("I will have to do this some other time.")
	Dialog.AddDialog("Only thirteen ash owlbear sinews from Nektulos Forest will do! Are you ready for a good hunt?")
	Dialog.Start()
end




function Option10(NPC, Spawn)
    SetStepComplete(Spawn, MaidForTheMistPartI, 4)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
     Dialog.AddVoiceover("voiceover/english/daisy_winterhope/hallmark/sea_of_mist/winterhope_dialog014.mp3", 3402799783, 3066435780)
	Dialog.AddOption("Glad to be of assistance.")
	Dialog.AddDialog("Terrific! The 'Maid for the Mist' will be ready to sail very soon! I haven't forgotten my promise! You ride for free, friend! Just talk to Captain Corrigan when you're ready to go!")
	Dialog.Start()
end



function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, MaidForTheMistPartI)
end

function Progress(NPC, Spawn)
    	Dialog.New(NPC, Spawn)
    	 Dialog.AddVoiceover("voiceover/english/daisy_winterhope/hallmark/sea_of_mist/winterhope_dialog007.mp3", 1674078797, 2006281337)
    	if GetQuestStep(Spawn, MaidForTheMistPartI) == 2 then
    		Dialog.AddOption("Here are 25 of them, as promised.", "Option6")
    		end
    	Dialog.AddOption("I haven't gotten them all yet.", "Progress2")
	Dialog.AddDialog("I've gotten most of my other materials; how's it coming with them ironshell carapaces?")
Dialog.Start()
end

function Progress2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    	 Dialog.AddVoiceover("voiceover/english/daisy_winterhope/hallmark/sea_of_mist/winterhope_dialog008.mp3", 3949737600, 247544336)
	Dialog.AddOption("I'll be back.")
	Dialog.AddDialog("Oh, All right, but hurry back.  We need to get this ship in shape for the journey!")
	Dialog.Start()
end


function Progress3(NPC, Spawn)
	
	Dialog.New(NPC, Spawn)
	  	  Dialog.AddVoiceover("voiceover/english/daisy_winterhope/hallmark/sea_of_mist/winterhope_dialog013.mp3", 1791255202, 617071081)
     if GetQuestStep(Spawn, MaidForTheMistPartI) == 4 then
         Dialog.AddOption("The hunt is over.  Here are thirteen ash owlbear sinews.", "Option10")
      end
		Dialog.AddOption("Still hunting.", "Progress2")
	Dialog.AddDialog("How's the hunt for the ash owlbears?")
	Dialog.Start()
end









function respawn(NPC)
	spawn(NPC)
end