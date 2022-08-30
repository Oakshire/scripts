--[[
    Script Name    : SpawnScripts/IsleRefuge1/AmbassadorTKirr.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.30 03:08:00
    Script Purpose : Just placing the parced dialog here.
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
	Dialog.AddDialog("So what do you think?  Do you possess the strength to live in the greatest city in Norrath?  Is your will strong enough to see your way through the troubled times ahead?  Or are you a smiling do-gooder who prefers frolicking in the streets of a softer city?")
	Dialog.AddVoiceover("voiceover/english/ambassador_t_kirr/tutorial_island02/ambassadortkirr007.mp3", 3785883027, 2697291122)
	Dialog.AddOption("I'm born and bred to lead.  How do I get to Freeport?", "Dialog4")
	Dialog.AddOption("I think I'll weigh my options a bit first.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Auugghh! Just thinking of those lovely white doves flying around a beautiful moat and the way Qeynos citizens always have a smile... Gah! Just the thought disgusts me.")
	Dialog.AddVoiceover("voiceover/english/ambassador_t_kirr/tutorial_island02/ambassadortkirr001.mp3", 1545000454, 4086082448)
	Dialog.AddOption("Umm, well what is Freeport like?", "Dialog6")
	Dialog.AddOption("You don't seem like a very nice person...")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("My words intrigue you... good.")
	Dialog.AddVoiceover("voiceover/english/ambassador_t_kirr/tutorial_island02/ambassadortkirr004.mp3", 2159575268, 1334539968)
	Dialog.AddOption("[continue]", "Dialog5")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Excellent! I knew you were a brave soul.  First you must speak with the Duke and arrange passage to Freeport.  The Overlord will cover the expenses for your journey but you must repay him for his generosity.  When you reach the district where you are living, speak with the Overseer assigned to the area and he will show you to your new quarters. ")
	Dialog.AddVoiceover("voiceover/english/ambassador_t_kirr/tutorial_island02/ambassadortkirr008.mp3", 1533775256, 3058641435)
	Dialog.AddOption("Then I have no further need of you.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well then, let me continue. Our great Overlord rules Freeport with a watchful eye and an iron fist.  With his strength guiding us, Freeport easily defends its walls against both orcish hordes and ruthless cutthroats.  A lesser city would have been destroyed long ago.")
	Dialog.AddVoiceover("voiceover/english/ambassador_t_kirr/tutorial_island02/ambassadortkirr005.mp3", 365161424, 1294590918)
	Dialog.AddOption("[continue]", "Dialog1")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Listen and listen well. If you want a real life, one with freedom, one with power, one with an opportunity to serve a greater cause, Freeport is your only choice.")
	Dialog.AddVoiceover("voiceover/english/ambassador_t_kirr/tutorial_island02/ambassadortkirr002.mp3", 4073129922, 2847751764)
	Dialog.AddOption("Then tell me more about it.", "Dialog3")
	Dialog.Start()
end

