--[[
    Script Name    : SpawnScripts/ThunderingSteppes/Googegguta.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.17 11:06:45
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
Dialog2(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yous can help!  Yous go inside and takes the fishes for me!  Yes yes!  The fishes are big and many, I only need two or three to take back to my tribe.  ")
	Dialog.AddOption("You are starving did you say?", "Dialog6")
	Dialog.AddOption("I'd rather not.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hey!  You there!  Come here so mees can looks at you!")
	Dialog.AddOption("Hello there, I don't believe we've met.", "Dialog5")
	Dialog.AddOption("I'd rather not.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You back!?  Do you have the fishes!?  Meez so hungry!")
	Dialog.AddOption("Not yet, but soon.  Eat something while you wait.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You will help!?  Oh thank you, thank you, thank you!  This good news!  Yes, very good indeed!  Go in there and then I will sneak after and get the fishes!  ")
	Dialog.AddOption("Sure, I'll get you some fish.", "Dialog9")
	Dialog.AddOption("No actually, I don't have the time now.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yous looks fats enough for this.  I have job for you if yous interested.  Yes, yous can help me get some fishes!")
	Dialog.AddOption("Wait a minute, what do you need?", "Dialog8")
	Dialog.AddOption("I'd rather not actually, good day.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Can you help!?  I have only fishes to pay you, but if the big stupid has treasure, you can keep!  I only needs the fishes!")
	Dialog.AddOption("OK, I'll see what I can do to help you.", "Dialog4")
	Dialog.AddOption("I'm not in the interest of getting myself killed.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good good!  I'm so hungry!  Thank you!")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Me and the whole tribe is starving!  They send me here to get some fishes, they know that the big stupid inside has many good fishes.  He is smart enough to protect fishes from me, he sees me taking his fishes and chase me out!")
	Dialog.AddOption("Stealing fish, eh?", "Dialog1")
	Dialog.AddOption("Indeed.  I've got no time for this now, bye.")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The big stupid is strong and would take many of my tribe to kill him, maybe one hundred at the least!  He can bash very well, so you will need some friends me thinks.  Yes, friends indeed!")
	Dialog.AddOption("Alright, I'll gather some help and see you later.", "Dialog7")
	Dialog.Start()
end

