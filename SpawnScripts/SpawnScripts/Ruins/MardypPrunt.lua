--[[
	Script Name		:	MardypPrunt.lua
	Script Purpose	:	Mardyp Prunt
	Script Author	:	jakejp
	Script Date		:	04/28/2020
	Script Notes	:	Auto-Generated from a chat log using SpawnScriptDesigner
--]]

require "SpawnScripts/Generic/DialogModule"

-- Quest ID's
local ANGERFANG = 391

function spawn(NPC)
	ProvidesQuest(NPC, ANGERFANG)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasCompletedQuest(Spawn, ANGERFANG) then 
		if HasQuest(Spawn, ANGERFANG) then 
			dlg_1(NPC, Spawn)
		else
			Dialog.New(NPC, Spawn)
			Dialog.AddDialog("Respect enemies!")
			Dialog.AddOption("What?", "dlg_3")
			Dialog.AddOption("Whatever.")
			Dialog.Start()
		end
	elseif HasCompletedQuest(Spawn, ANGERFANG) then 
		Say(NPC, "Making fang dust harder than Mardyp thought!", Spawn)
	end

end

function dlg_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("If enemies strong, respect them!")
	Dialog.AddOption("Oh.", "dlg_4")

	Dialog.Start()
end

function dlg_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("Orc strong! Not THAT strong, but strong enough for respect! Mardyp talk to friend in Big Bend. Friend tell Mardyp that something in orc tusks make orcs more fierce, more strong! Mardyp killing orcs fine, but crushing fangs to eat takes time. You help Mardyp?")
	Dialog.AddOption("How can I help?", "dlg_5")

	Dialog.Start()
end

function dlg_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("Get more fangs while Mardyp crush ones I already have. All orcs have fangs. Mardyp need 20!")
	Dialog.AddOption("Ok, I'll collect some fangs.", "OfferQuest1")

	Dialog.Start()
end

function OfferQuest1(NPC, Spawn)
	OfferQuest(NPC, Spawn, ANGERFANG)
end

function dlg_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("Orc fangs?")
	if GetQuestStep(Spawn, ANGERFANG) == 2 then
		Dialog.AddOption("Here you go.", "dlg_7")
	else
		Dialog.AddOption("Not yet.")
	end 
	Dialog.Start()
end


function dlg_7(NPC, Spawn)
	SetStepComplete(Spawn, ANGERFANG, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("Good! Mardyp very happy! Soon Mardyp make these into soup or drink or something! Unless that too much work, then Mardyp just eat it.")
	Dialog.AddOption("Well, good luck with that.")

	Dialog.Start()
end