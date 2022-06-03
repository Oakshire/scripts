--[[
    Script Name    : SpawnScripts/Maiden's Gulch: Rescue of the Sage/TheSageofAges.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 06:06:17
    Script Purpose : 
                   : 
--]]

--[[
	Script Name		: SpawnScripts/MaidensGulch:RescueoftheSage/TheSageofAges.lua
	Script Purpose	: The Sage of Ages
	Script Author	: Dorbin
	Script Date		: 2022.06.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

local Drag = 5577

function spawn(NPC)
ProvidesQuest(NPC,Drag)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
Dialog8(NPC, Spawn)
--RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1012.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1012.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1012.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You do not fathom the danger you are willing to enter.  Nagafen resides in the very depths of Solusek's Eye.  The Fire Giants are loyal to the Lord Nagafen and will destroy any intruders that set foot within their realm.")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages007.mp3", 3694642980, 1868050010)
	Dialog.AddOption("I can handle a few Fire Giants. ", "Dialog2")
	Dialog.AddOption("I guess you are right, it is too dangerous. ")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I can see that you won't be dissuaded from pursuing this rash idea.  I will relent my position.  Please, speak with the Lord Nagafen on my behalf and discover why he seeks my death.  I fear there is much more afoot than any of us realize.")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages008.mp3", 2465179461, 455719688)
	Dialog.AddOption("How do we gain audience with Nagafen? ", "Dialog5")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("There are few Dragons still active in this world.  The Age of War and the Age of Cataclysms have taken their tolls on the Dragons as well and they too are recovering.  However, there are a few who gained in the destruction.  The Lord Nagafen and the Lady Vox have prospered as others have declined in power.  These Drakota must have been sent by the Lord Nagafen as he would be the only one to possess the power to do so.")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages004.mp3", 2067884252, 2225233530)
	Dialog.AddOption("Why would he send them after you? ", "Dialog7")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I am known as the Sage of Ages, a neutral historian charged with scribing the events of history so that their lessons will not be forgotten, or repeated.  It surprises me that these creatures would be sent to attack me.")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages002.mp3", 1537502806, 3355505267)
	Dialog.AddOption("These Drakota were sent? ", "Dialog9")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You must travel down into the heart of Solusek's Eye.  There you will find the Gong of Ro.  Sound the Gong and you will be transported to the lair of the red dragon.  Please, be careful.  I will travel to the Tower of the Coldwind Oracles near the city of Qeynos.  Please seek me there when you have spoken with the Lord Nagafen.  Go with my blessing.")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages009.mp3", 2590078637, 2100670433)
	Dialog.AddOption("Thank you, Sage.  We will meet with you soon. ","QuestOffer")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,Drag)
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I would not send you on such a quest.  I will not have the blood of my rescuers on my hands by asking such a thing.  It is far too dangerous to send anyone into the lair of Nagafen, and I will not do so to satisfy my own curiosity or my own peace of mind.  ")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages006.mp3", 3400315577, 964328151)
	Dialog.AddOption("It is more than that. Your life is in danger.", "Dialog1")
	Dialog.AddOption("You are probably right.  Farewell Sage. ")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I know not why he has done this thing and it greatly worries me.  Maybe he believes I know too much, or he detests the truths I write.  I wish to know what has caused him this distress, but I fear for my own existence if I were to come any closer to his lair.")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages005.mp3", 4078633044, 89702173)
    if not HasQuest(Spawn,Drag) and not HasCompletedQuest(Spawn,Drag) and GetLevel(Spawn)>=45 then
	Dialog.AddOption("We can approach him for you.", "Dialog6")
    end
	Dialog.AddOption("Good luck talking to him. ")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Thank you my friends, thank you!  I do not understand why those Drakota attacked me.  I cannot be of any threat to them; I am but a humble chronicler!")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages001.mp3", 934589931, 3209079029)
	Dialog.AddOption("Who are you? ", "Dialog4")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes, Drakota rarely act of their own initiative.  They are weapons used by Dragonkind to fulfill their own designs.  I do not know what I could have done to anger the Scalelords. I only scribe the truth and have done so for many centuries.")
	Dialog.AddVoiceover("the_sage_of_ages/draconic/sage_of_ages003.mp3", 3064215098, 761918483)
	Dialog.AddOption("Who could have sent these? ", "Dialog3")
	Dialog.Start()
end

