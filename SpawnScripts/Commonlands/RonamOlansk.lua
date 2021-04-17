--[[
    Script Name    : SpawnScripts/Commonlands/RonamOlansk.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.25 09:03:59
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")

local QUEST = 5219 -- Quell the Undead quest

function spawn(NPC)
ProvidesQuest(NPC, QUEST)
end

function hailed(NPC, Spawn)
    GenericHail(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Dead orcs?  Head for the hills!  Flee!")
	if not HasQuest(Spawn, QUEST) and not HasCompletedQuest(Spawn, QUEST) then
	AddConversationOption(conversation, "I might be able to drive them off...", "Option1")
	elseif GetQuestStep(Spawn, QUEST) == 2 then
	AddConversationOption(conversation, "The danger has lessened considerably.  I've returned from the caves victorious.", "Option2")
	end
	StartConversation(conversation, NPC, Spawn, "Please stay away from here! The dead souls of orcs callout for vengeance, and I'll not put you or the rest of my people in danger.")
end

function respawn(NPC)
	spawn(NPC)
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "A reward, eh?  That sounds more like my style...", "offer")
	AddConversationOption(conversation, "What a pathetic waste of my time.  I'll not kill your skeletons for you.")
	StartConversation(conversation, NPC, Spawn, "I'm not so certain...  but I suppose there's no harm in letting you risk your own life trying.  If you kill enough of the skeletons inside the cave, the skeletons outside may return to their resting place.  My people and I will scrape together what little we have to pay for your services.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SetStepComplete(Spawn, QUEST, 2)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "That might be a wise course of action this area is dangerous.")
	StartConversation(conversation, NPC, Spawn, "Thank you for what you have done for our camp here.  We nomads are not the most wealthy of individuals, but here is a token of our appreciation for your assistance in the matter.  I fear that the dead shall rise again all too quickly.  Perhaps it will be better to just move on...")
end


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, QUEST)
end
