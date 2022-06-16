--[[
    Script Name    : SpawnScripts/QeynosHarbor/Sprockfuddle.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.15 07:06:22
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

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "I need a ledger to track what she skims from my profits!", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Stupid taxes!", "", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "There's a better life out there.  A much better life.", "", 0, 0, Spawn, 0)

	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That's the spirit! Do you want to live the good life by making simple trades -- commodities, information or items?  It's easy; anyone can do it.  Your pockets fill with coin -- and none of it's taxable since it's under the table.")
	Dialog.AddOption("Tell me more.", "Dialog5")
	Dialog.AddOption("I'm not interested.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Admiring the fine stock of goods, are you?")
	Dialog.AddOption("Well...not exactly.  Do you have anything else?", "Dialog4")
	Dialog.AddOption("I've seen better.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You're here because you want a good deal on things that you might not otherwise come by, right?  Same with me.  I might pick up a tidbit of information that's every bit as valuable as the next thing.")
	Dialog.AddOption("You're a spy?", "Dialog8")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Sometimes.  It pays to have connections.  I do quite a bit of trading and supplying.  Not just goods, but other things...if you take my meaning.")
	Dialog.AddOption("What other things?", "Dialog3")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("There's the oppressive taxes that Queen Antonia puts on the folks who live here.  You never see her lift a hand to help the poor, do you?  That's why my job's so important.  I provide a few cheap trinkets to folks who starve themselves putting chickens in the pots of every Qeynosian noble.")
	Dialog.AddOption("I hadn't thought of it that way before.", "Dialog6")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("She has everyone mark up the goods and taxes both buyer and seller.  Sickening, I tell you! Now, I might add a premium to some things, but I'm honest about it.  Folks from Freeport are honest, whatever else you might call 'em.")
	Dialog.AddOption("I'd never thought of it that way, either.", "Dialog7")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I like that type of person: someone doesn't like you, they'll tell you to your face.  None of this secretive mumbity-jumbity stuff.  You seem the honest sort, eager to do what's right by yourself. You would do much better elsewhere, wouldn't you?")
	Dialog.AddOption("[NOT IMPLMENTED] As much as I would love to betray this disgusting turd of a city, your task isn't ready yet!")
	Dialog.AddOption("I suppose so.")
	Dialog.AddOption("Maybe some other time.")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Spying's for amateurs! No, I'm not a spy; I'm more than that.  A trader, a procurer of rare objects, an inventor -- that's me! But even someone with my skills can always use a hand now and then.  Interested in learning how you can help?")
	Dialog.AddOption("What kind of help are you talking about?", "Dialog1")
	Dialog.Start()
end

