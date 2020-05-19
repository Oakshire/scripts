--[[
	Script Name		:	CogBurn.lua
	Script Purpose	:	Cog Burn
	Script Author	:	ParserGenerated (Replace this)
	Script Date		:	08/30/2019
	Script Notes	:	Auto-Generated from a chat log using SpawnScriptDesigner
--]]

require "SpawnScripts/Generic/DialogModule"

-- Quest ID's
local COMBUSTIBLE_GNOME = 478

function spawn(NPC)
	ProvidesQuest(NPC, COMBUSTIBLE_GNOME)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("You're just in time!  Yes, yes, just in time to help me continue my research.  With the popping and smoke, poofing!  So, so very exciting!  All you have to do is fetch me the smashed remains of these undead orcs.")
	Dialog.AddRequirement(REQ_QUEST_ELIGIBLE, COMBUSTIBLE_GNOME)
	Dialog.AddOption("I have to smash them?", "dlg_2")
	Dialog.AddOption("I'm not interested.")
	Dialog.AddDialog("What!?  No smoldering, popping boom!  I'm almost done!  I've 78% of component A; 12% of ingredient B; and all I need now is the last 15% of sample D!  Go, go, go get me my stuff!  ")
	Dialog.AddRequirement(REQ_QUEST_HAS_QUEST, COMBUSTIBLE_GNOME)
	Dialog.AddOption("Ok.")

	Dialog.Start()

	--[[	Say() from this NPC

				Say(NPC, "How fortunate for me!  More adventurers!  Whee!  Come now, come here.", Spawn)


			Orphaned PlayFlavors
	--]]

end

function dlg_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("Of course you have to smash them before they're any good to me.  Nothing worse than components trying to eliminate the tinker! We don't want that to happen again, I'm telling you.  I was not amused.")
	Dialog.AddOption("That sounds dreadful!", "OfferQuest1")
	Dialog.AddOption("Good luck finding help.")

	Dialog.Start()
end

function OfferQuest1(NPC, Spawn)
	OfferQuest(NPC, Spawn, COMBUSTIBLE_GNOME)

	--[[	Move the following conversation to the Accepted function of the quest script
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)

	Dialog.AddDialog("Good, good!  I'm glad we agree. You fetch me what I need, and I'll see what I can do for you.  You can trust me ... can't you?  Oh, no matter.  ")
	Dialog.AddOption("Ok.")

	Dialog.Start()
	--]]
end