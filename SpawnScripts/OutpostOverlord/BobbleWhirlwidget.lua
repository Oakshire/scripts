--[[
	Script Name	:	BobbleWhirlwidget.lua
	Script Purpose	:	Bobble Whirlwidget
	Script Author	:	vo1d
	Script Date	:	11/02/2019
	Script Notes	:	
--]]

require "SpawnScripts/Generic/DialogModule"

-- Quest ID's
local THE_SECRET_SHIP = 487

function spawn(NPC)
	ProvidesQuest(NPC, THE_SECRET_SHIP)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	if HasCompletedQuest(Spawn, THE_SECRET_SHIP) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bobble_whirlwidget/tutorial_island02_evil_revamp/quests/bobble_whirlwidget/bobble_whirlwidget007.mp3", "", "", 3343893238, 3510748544, Spawn)
    elseif HasQuest(Spawn, THE_SECRET_SHIP) then
        if GetQuestStep(Spawn, THE_SECRET_SHIP) == 2 then
            Step2Complete(NPC, Spawn)
        end
    else -- You haven't completed the quest nor are you on the quest.
        FirstGreetings(NPC, Spawn)
	end
end

function FirstGreetings(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("How am I going to collect these lugsnibbets?  I can't swim, but that won't matter when the ship is done.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/bobble_whirlwidget/tutorial_island02_evil_revamp/quests/bobble_whirlwidget/bobble_whirlwidget001.mp3", 2891438805, 3358056285)
	Dialog.AddOption("What ship?", "dlg_2")
	Dialog.AddOption("I need to go.")

	Dialog.Start()
end

function Step2Complete(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    SetStepComplete(Spawn,  THE_SECRET_SHIP, 2)
	Dialog.AddDialog("Holy snogratchets, that was quick!")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/bobble_whirlwidget/tutorial_island02_evil_revamp/quests/bobble_whirlwidget/bobble_whirlwidget008.mp3", 2960606569, 1409207301)
	Dialog.AddOption("Here's your specimens.", "dlg_7")
	Dialog.Start()
end

function dlg_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("Shhhhh!  I need to keep this as quiet as possible, the Overlord demands it.  But I'm wizzlewogged here on my research and could use some help.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/bobble_whirlwidget/tutorial_island02_evil_revamp/quests/bobble_whirlwidget/bobble_whirlwidget002.mp3", 2087913374, 2185838291)
	Dialog.AddOption("I can keep a secret.", "dlg_3")
	Dialog.AddOption("I don't want to get into it.")

	Dialog.Start()
end

function dlg_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("Okay, word has it that the Wobblecog family of Qeynos is on the verge of perfecting a ship that can travel underwater. The Overlord cannot let Qeynos get the upper hand, so I have been tasked with figuring out the process for creating these ships.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/bobble_whirlwidget/tutorial_island02_evil_revamp/quests/bobble_whirlwidget/bobble_whirlwidget003.mp3", 1612814867, 2911909119)
	Dialog.AddOption("Go on.", "dlg_4")

	Dialog.Start()
end

function dlg_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("I've discovered a creature called the nautilus that uses air chambers within its shell to keep itself buoyant, similar to the pogflume dialator I've been working on. I believe that if I can get some of these specimens, I should be able to figure out the mechanism and apply it to a ship.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/bobble_whirlwidget/tutorial_island02_evil_revamp/quests/bobble_whirlwidget/bobble_whirlwidget004.mp3", 1389844505, 1224176748)
	Dialog.AddOption("I'll collect the specimens.", "OfferQuest1")
	Dialog.AddOption("I need to go.")

	Dialog.Start()
end

function OfferQuest1(NPC, Spawn)
	OfferQuest(NPC, Spawn, THE_SECRET_SHIP)
end

function dlg_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("Excellent!  This ship is gonna be magnificent.  Here, take this for your efforts.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/bobble_whirlwidget/tutorial_island02_evil_revamp/quests/bobble_whirlwidget/bobble_whirlwidget009.mp3", 2861918733, 954207307)
	Dialog.AddOption("Thanks.")
	SetStepComplete(Spawn, THE_SECRET_SHIP, 2)


	Dialog.Start()
end