--[[
	Script Name	: SpawnScripts/DarklightWood/UdiyitasXKilrae.lua
	Script Purpose	: Udiyitas X'Kilrae 
	Script Author	: Cynnar
	Script Date	: 2015.07.05
	Script Notes	: Beginning dialog has "wince" emote being used but is not correct.
	                : Closest I found so far.
--]]

local ASolidifiedFront = 120
local ElementalEncroachment = 121

function spawn(NPC)
	ProvidesQuest(NPC, ElementalEncroachment)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, ASolidifiedFront) and not QuestStepIsComplete(Spawn, ASolidifiedFront, 1) then
		SetStepComplete(Spawn, ASolidifiedFront, 1)
        end

    if not HasQuest(Spawn, ASolidifiedFront) and not HasCompletedQuest(Spawn, ASolidifiedFront) then
        StartConversation(conversation, NPC, Spawn, "The Sablevein must be stopped before they burn down all of Hate's Envy!")
	elseif HasQuest(Spawn, ElementalEncroachment) and GetQuestStep(Spawn, ElementalEncroachment) == 1 then
		PlayFlavor(NPC, "udiyitas_x_kilrae/darklight_wood/hates_envy/udiyitas_revamp/udiyitas004.mp3", "", "", 827914916, 961160559, Spawn)
		AddConversationOption(conversation, "I'm still hunting them.", "dlg_1_1")
		StartConversation(conversation, NPC, Spawn, "Were you successful in striking down the invaders?")
	elseif HasQuest(Spawn, ElementalEncroachment) and GetQuestStep(Spawn, ElementalEncroachment) == 2 then
		PlayFlavor(NPC, "udiyitas_x_kilrae/darklight_wood/hates_envy/udiyitas_revamp/udiyitas004.mp3", "", "", 827914916, 961160559, Spawn)
		AddConversationOption(conversation, "I slew a great number of the Sablevein crumblers!", "dlg_2_1")
		StartConversation(conversation, NPC, Spawn, "Were you successful in striking down the invaders?")
	elseif HasCompletedQuest(Spawn, ElementalEncroachment) then
		PlayFlavor(Spawn, "", "", "wave", 0, 0, Player)
		PlayFlavor(NPC, "udiyitas_x_kilrae/darklight_wood/hates_envy/udiyitas_revamp/udiyitas005.mp3", "", "", 3475491960, 633382350, Spawn)
		AddConversationOption(conversation, "Good-bye, Udiyitas.")
		StartConversation(conversation, NPC, Spawn, "Excellent work, " .. GetName(Spawn) .. ". I see now that fear is not an emotion you're much familiar with. Neriak will prosper greatly so long as you defend her banner. Now then, enough idle discourse. The Sablevein continue to strike. You must speak with Pellandra if you have not already.")
	else
		PlayFlavor(NPC, "udiyitas_x_kilrae/darklight_wood/hates_envy/udiyitas_revamp/udiyitas001.mp3", "", "wince", 1460950468, 2447529332, Spawn)
		AddConversationOption(conversation, "Yes, point me in the face of danger.", "dlg_0_1")
		AddConversationOption(conversation, "How can I help?", "dlg_0_1")
		StartConversation(conversation, NPC, Spawn, "It's about time Verex sent some help! You are here to assist with the Sablevein, right?")
	end


end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "udiyitas_x_kilrae/darklight_wood/hates_envy/udiyitas_revamp/udiyitas002.mp3", "", "smirk", 3581344743, 4242686519, Spawn)
		AddConversationOption(conversation, "Consider them no more!", "QuestOffer")
		AddConversationOption(conversation, "I do not feel ready to battle.", "PlayerEmote")
	StartConversation(conversation, NPC, Spawn, "This outpost is about to be overrun if we don't act fast! If you really do think you can assist us, charge out into the fray and slay a number of the advancing Sablevein crumblers.")
end

function PlayerEmote(NPC, Spawn)
	PlayFlavor(Spawn, "", "", "no", 0, 0, Player)
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "udiyitas_x_kilrae/darklight_wood/hates_envy/udiyitas_revamp/udiyitas006.mp3", "", "", 2328635398, 829982468, Spawn)
	AddConversationOption(conversation, "I wiill return victoriouns!")
	StartConversation(conversation, NPC, Spawn, "Do not return until you have slain a great number of the Sablevein elementals!")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	SetStepComplete(Spawn, ElementalEncroachment, 2)
	
	PlayFlavor(Spawn, "", "", "wave", 0, 0, Player)
	PlayFlavor(NPC, "udiyitas_x_kilrae/darklight_wood/hates_envy/udiyitas_revamp/udiyitas005.mp3", "", "", 3475491960, 633382350, Spawn)
	SetStepComplete(Spawn, ElementalEncroachment, 2)
	AddConversationOption(conversation, "Good-bye, Udiyitas.")
	StartConversation(conversation, NPC, Spawn, "Excellent work, " .. GetName(Spawn) .. ". I see now that fear is not an emotion you're much familiar with. Neriak will prosper greatly so long as you defend her banner. Now then, enough idle discourse. The Sablevein continue to strike. You must speak with Pellandra if you have not already.")
end

function QuestOffer(NPC, Spawn)
	PlayFlavor(Spawn, "", "", "brandish", 0, 0, Player)
	OfferQuest(NPC, Spawn, ElementalEncroachment)
end
