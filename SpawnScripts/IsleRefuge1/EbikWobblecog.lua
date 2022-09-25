--[[
    Script Name    : SpawnScripts/IsleRefuge1/EbikWobblecog.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.25 03:09:00
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local EbiksMissingParts = 5755

function spawn(NPC)
    ProvidesQuest(NPC,EbiksMissingParts)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, EbiksMissingParts) and not HasCompletedQuest(Spawn,EbiksMissingParts) then
    Dialog1(NPC, Spawn)
    elseif GetQuestStep(Spawn, EbiksMissingParts) < 4 then
    Dialog21(NPC, Spawn)
    elseif GetQuestStep(Spawn, EbiksMissingParts) == 4 then
    Dialog22(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, EbiksMissingParts) then
    Dialog1(NPC, Spawn)
    end
end


function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Why, hello there! I was just sitting here waiting for the boat to Qeynos.")
	Dialog.AddVoiceover("voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_01.mp3", 2713964680, 2172979410)
    PlayFlavor(NPC,"","","hello",0,0,Spawn)
	Dialog.AddOption("Why are you going to Qeynos?", "Dialog2")
	Dialog.AddOption("Good luck with that.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ahh, I'm going there to meet my father. He dropped me off on this island because he was afraid our boat wouldn't make the trip. I begged him to stay, but he said he had urgent news for Qeynos.")
	Dialog.AddVoiceover("voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_02.mp3", 532888096, 1705696510)
	Dialog.AddOption("What was the news?", "Dialog3")
	Dialog.AddOption("Safe travels.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm not quite sure. He was in such a hurry that he never told me. Also I may have been a little distracted by his ship, it was really amazing.")
	Dialog.AddVoiceover("voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_03.mp3", 3248832255, 3165995891)
     PlayFlavor(NPC,"","","confused",0,0,Spawn)
	Dialog.AddOption("Why was his ship distracting?", "Dialog4")
	Dialog.AddOption("Goodbye.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Because it was under water, of course! Have you ever seen a boat that runs beneath the waves? I certainly haven't. It was such genius, I spent the entire voyage inspecting it.")
	Dialog.AddVoiceover("voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_04.mp3", 1312724951, 594166513)
    PlayFlavor(NPC,"","","nod",0,0,Spawn)
	Dialog.AddOption("Go on.", "Dialog5")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm certain he hadn't planned on it falling below the surface. It's just another example of our curse, I suppose.")
	Dialog.AddVoiceover("voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_05.mp3", 2209355729, 410792148)
    PlayFlavor(NPC,"","","sigh",0,0,Spawn)
	Dialog.AddOption("What curse?", "Dialog6")
	Dialog.AddOption("I want no part of your curse, goodbye.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Surely you've heard of the Wobblecog family curse of miscalculation? No... no, I suppose you haven't, have you? Well, it doesn't appear that the boat is here yet.  I imagine I've got time to tell you about our curse if you'd like to hear it.")
	Dialog.AddVoiceover("voiceover/english/ebik_wobblecog/tutorial_island02/ebik_firsttalk_06.mp3", 848346297, 415788395)
    PlayFlavor(NPC,"","","nod",0,0,Spawn)
	Dialog.AddOption("Yes, I'd like that.", "Dialog7")
	Dialog.AddOption("Not really.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Very well. It began long ago in Ak'Anon when the king decided to hold a contest. It was grand.  The king invited everyone to make a clockwork king, and the one that most resembled him would win.")
	Dialog.AddVoiceover("voiceover/english/ebik_wobblecog/tutorial_island02/ebik_firsttalk_07.mp3", 489617943, 459263052)
    PlayFlavor(NPC,"","","agree",0,0,Spawn)
	Dialog.AddOption("Please go on.", "Dialog8")
	Dialog.Start()
end


function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The two favored inventors were my ancestor, Tizik Wobblecog, and an ingenious, but maligned tinkerer named Meldrath. They both submitted their designs, and after much deliberation it was found that the Wobblecog plan provided a much more accurate interpretation of the king.")
	Dialog.AddVoiceover("voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_08.mp3", 2658473484, 2726816701)
    PlayFlavor(NPC,"","","tapfoot",0,0,Spawn)
	Dialog.AddOption("What happened then?", "Dialog9")
	Dialog.AddOption("That's nice, fairwell.")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Tizik's clockwork became the royal doppelganger of course, and Meldrath became infuriated. He placed a curse on my family that has lasted every generation from then onward.")
	Dialog.AddVoiceover("voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_09.mp3", 168646029, 2064100068)
    PlayFlavor(NPC,"","","sigh",0,0,Spawn)
	Dialog.AddOption("Do go on.", "Dialog10")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("He cursed us with miscalculation! It's nearly driven my family to madness. ")
	Dialog.AddVoiceover("voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_10.mp3", 468670444, 2791058506)
    PlayFlavor(NPC,"","","crazy",0,0,Spawn)
	Dialog.AddOption("That does sound bothersome.", "Dialog11")
	Dialog.Start()
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("We're the most ingenious inventors, you see. We have truly inspired ideas, but can not ever see them through to completion because we fumble some inane formula.")
	Dialog.AddVoiceover("voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_11.mp3", 1677273819, 2525140274)
	Dialog.AddOption("That sounds devastating.", "Dialog12")
	Dialog.AddOption("Good luck with that.")
	Dialog.Start()
end


function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, it is! Take my father for instance. We thought he had finally overcome the curse when he made that boat. It looked so beautiful and was more complete than any other Wobblecog invention has been in centuries. ")
	Dialog.AddVoiceover("voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_12.mp3", 605082040, 3732575966)
    PlayFlavor(NPC,"","","agree",0,0,Spawn)
	Dialog.AddOption("I see.", "Dialog13")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Then, as soon as we got it out in the ocean, it sunk like a rock. Who knew iron wouldn't float?")
	Dialog.AddVoiceover("voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_13.mp3", 2893072579, 3745020880)
    PlayFlavor(NPC,"","","shrug",0,0,Spawn)
	Dialog.AddOption("How did you get here if the boat sunk?", "Dialog14")
	Dialog.AddOption("Oh boy...I really don't have time for this.")
	Dialog.Start()
end

function Dialog14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Luckily, my father had compensated for the curse. He knew something was bound to go wrong, so he completely encapsulated the boat, making it water tight just in case something went awry. Sure enough, the moment she left the berth the Ticking Tock fell straight to the sea floor.")
	Dialog.AddVoiceover("voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_14.mp3", 950110533, 2594458588)
	Dialog.AddOption("But it moved along the floor?", "Dialog15")
	Dialog.AddOption("Are you still talking?  Goodbye.")
	Dialog.Start()
end

function Dialog15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, yes! There were several waterproofed whirligigs set up in a flagnuvian configuration to displace the meganominal gnoggnards.")
	Dialog.AddVoiceover("voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_15.mp3", 2110642575, 2339438650)
    PlayFlavor(NPC,"","","agree",0,0,Spawn)
   if not HasQuest(Spawn, EbiksMissingParts) then
	Dialog.AddOption("I see...", "Dialog16")
    end
	Dialog.AddOption("Okay then...I'm just gonna walk away now.")
	Dialog.Start()
end


function Dialog16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("So here I am, sitting on the dock with all of the extra par... hmm... Oh! This seems to be a bit of a problem.")
	Dialog.AddVoiceover("voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_16.mp3", 2068602594, 1935966397)
	Dialog.AddOption("What's wrong?", "Dialog17")
	Dialog.AddOption("And that's my cue to leave.")
	Dialog.Start()
end

function Dialog17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm missing the extra parts that my father asked me to collect. Oh no! This is disastrous! I can't leave the dock because I'll miss the boat and I can't go to Qeynos without those parts! What am I going to do?")
	Dialog.AddVoiceover("voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_17.mp3", 1279276755, 1158727410)
    PlayFlavor(NPC,"","","pout",0,0,Spawn)
	Dialog.AddOption("Maybe I can help?", "Dialog18")
	Dialog.AddOption("Sounds like you're out of luck.")
	Dialog.Start()
end


function Dialog18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You'd do that for me? Oh, thank you very, very, much! I'll stay here and ask the boat captain to wait for you to return, should he come. I'm missing three parts and I have no idea where they could be. I know they're on the island somewhere!")
	Dialog.AddVoiceover("voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_18.mp3", 651304560, 3462850597)
    PlayFlavor(NPC,"","","whome",0,0,Spawn)
	Dialog.AddOption("What parts are you missing?", "Dialog19")
	Dialog.Start()
end

function Dialog19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm missing a size 7 clunker, a copper-coated springer, and a triangle spinner. If you could find them and bring them to me, I'd be forever grateful!")
	Dialog.AddVoiceover("voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_19.mp3", 3704607131, 803524082)
    PlayFlavor(NPC,"","","nod",0,0,Spawn)
	Dialog.AddOption("I'll get right on it.", "QuestOffer")
	Dialog.AddOption("I can't right now.")
	Dialog.Start()
end


function QuestOffer(NPC,Spawn)
    OfferQuest(NPC,Spawn,EbiksMissingParts)
	FaceTarget(NPC, Spawn)
end


function Dialog21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I need all the parts, I can't leave without them and luckily the boat to Qeynos hasn't showed up yet. Please help me find all of the parts.")
    PlayFlavor(NPC,"","","tapfoot",0,0,Spawn)
	Dialog.AddVoiceover("voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_secondtalk_01.mp3", 688070292, 1255284608)
	Dialog.AddOption("Okay.")
	Dialog.Start()
end




function Dialog22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes, yes, yes! These are all the parts I need! Thank you ever so much. Please, take this as a token of my appreciation. I'm sure the boat will be here any minute now.")
	Dialog.AddVoiceover("voiceover/english/island_of_refuge/ebikwobblecog/ior_ebikwobblecog_021.mp3", 1116547002, 1635450019)
    PlayFlavor(NPC,"","","happy",0,0,Spawn)
	Dialog.AddOption("Good Luck.")
	Dialog.Start()
	SetStepComplete(Spawn, EbiksMissingParts, 4)
end






