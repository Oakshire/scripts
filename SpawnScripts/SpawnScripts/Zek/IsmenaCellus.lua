--[[
	Script Name		:	IsmenaCellus.lua
	Script Purpose	:	Ismena Cellus
	Script Author	:	Jabantiz
	Script Date		:	06/19/2018
	Script Notes	:	Auto-Generated from a chat log using SpawnScriptDesigner
--]]

-- Quest ID's
local RELIVING_THE_PAST = 351

function spawn(NPC)
	ProvidesQuest(NPC, RELIVING_THE_PAST)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	if CanReceiveQuest(Spawn, RELIVING_THE_PAST) then
		AddConversationOption(con, "What do you mean?", "dlg_2")
		AddConversationOption(con, "Do what I do: get over it.")
		StartConversation(con, NPC, Spawn, "Is it always this way?  You reach the end of your life and realize that you cannot recall your past?  I don't know if I remember things as they truly were or as I wish they were.  And now, I do not have the strength to do them over again.")
	end
	if HasQuest(Spawn, RELIVING_THE_PAST) and GetQuestStep(Spawn, RELIVING_THE_PAST) >= 1 and GetQuestStep(Spawn, RELIVING_THE_PAST) <= 2 then
		if HasQuest(Spawn, RELIVING_THE_PAST) and GetQuestStep(Spawn, RELIVING_THE_PAST) == 2 then
			AddConversationOption(con, "The orcs still roam the hills.", "dlg_5")
		end
		AddConversationOption(con, "I've not been beyond the docks yet.")
		StartConversation(con, NPC, Spawn, "That was quick work!")
	end
	if HasQuest(Spawn, RELIVING_THE_PAST) and GetQuestStep(Spawn, RELIVING_THE_PAST) >= 3 and GetQuestStep(Spawn, RELIVING_THE_PAST) <= 4 then
		if HasQuest(Spawn, RELIVING_THE_PAST) and GetQuestStep(Spawn, RELIVING_THE_PAST) == 4 then
			AddConversationOption(con, "Yes; they know my worth.", "dlg_7")
		end
		AddConversationOption(con, "They have not yet learned their lesson.")
		StartConversation(con, NPC, Spawn, "Do the Tallon grunts flee from you now, as they once fled from me?")
	end
	if HasQuest(Spawn, RELIVING_THE_PAST) and GetQuestStep(Spawn, RELIVING_THE_PAST) >= 5 and GetQuestStep(Spawn, RELIVING_THE_PAST) <= 6 then
		if HasQuest(Spawn, RELIVING_THE_PAST) and GetQuestStep(Spawn, RELIVING_THE_PAST) == 6 then
			AddConversationOption(con, "Yes.  I said a few words on behalf of your son.", "dlg_11")
		end
		AddConversationOption(con, "No, not yet.")
		StartConversation(con, NPC, Spawn, "Were you able to find the Grove?")
	end
	if HasCompletedQuest(Spawn, RELIVING_THE_PAST) then
		AddConversationOption(con, "No problem.")
		StartConversation(con, NPC, Spawn, "I appreciate your help.")
	end
end

function dlg_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	AddConversationOption(con, "I'd be honored.", "dlg_3")
	AddConversationOption(con, "Perhaps you did nothing worth remembering.")
	StartConversation(con, NPC, Spawn, "I believed that there would be time later for me to remember ...Yet \"later\" is upon me and the details have slipped away.  I returned to Zek to remind me of how it felt to first land here, but I'm unable to climb the hills again.  Hmm.  I wonder... would you be good enough to retrace some of my steps?  To give me your impressions of this place...")
end

function dlg_3(NPC, Spawn)
	
	OfferQuest(NPC, Spawn, RELIVING_THE_PAST)

end

function dlg_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	SetStepComplete(Spawn, RELIVING_THE_PAST, 2)

	AddConversationOption(con, "I wouldn't mind killing some of them myself!")
	StartConversation(con, NPC, Spawn, "How I wish I were still strong! My lungs fill with fluid; some poisonous bite I received in my youth has come back to kill me slowly.  I would slay those Tallon grunts over and again if I could!")
end

function dlg_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	AddConversationOption(con, "That's not very optimistic of you.", "dlg_8")
	AddConversationOption(con, "We all must perish some day.")
	StartConversation(con, NPC, Spawn, "In many ways, I'm sorry to know the Tallons still thrive; they look to outlive me!  My memoirs will be useless.  My enemies survive and I will perish.")
end

function dlg_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	AddConversationOption(con, "I'm sorry for your loss.  Is there anything I can do for you?", "dlg_9")
	AddConversationOption(con, "I have no time for your melancholy right now.")
	StartConversation(con, NPC, Spawn, "No, I suppose it's not.  You see, my son was with us that day.  He was slain by ... the Tallons.  That is why I have trouble writing about this place.  I would rather not remember.")
end

function dlg_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	SetStepComplete(Spawn, RELIVING_THE_PAST, 4)

	AddConversationOption(con, "I'll be back as soon as I can.")
	StartConversation(con, NPC, Spawn, "There is a place -- or was -- a Grove of Stones.  Some folks say it is an ancient Druid's Ring.  My son had wanted to worship there.  If you would find this place and say a few words for him, I would be very grateful.  The way is dangerous, but it is not far.")
end

function dlg_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	SetStepComplete(Spawn, RELIVING_THE_PAST, 6)

	AddConversationOption(con, "Thank you and good luck with your book.")
	StartConversation(con, NPC, Spawn, "I promised him I would go there and pray, but I had no words to say when I went all those years ago.  Knowing that someone else has been there and prayed on his behalf...I think I will be able to write my memoirs now.  Please, accept this as a token of my thanks.")
end