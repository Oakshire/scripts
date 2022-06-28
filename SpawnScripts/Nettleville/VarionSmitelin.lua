--[[
	Script Name	: SpawnScripts/Nettleville/VarionSmitelin.lua
	Script Purpose	: Varion Smitelin <Spell Scrolls>
	Script Author	: Scatman
	Script Date	: 2009.08.12
	Script Notes	: 
--]]

local QUEST_1 = 311
local REFILL_THE_OAKMYST_SPIDER_SILK_JARS = 312

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn) --Quest Callout
if GetFactionAmount(Spawn,11)<0 then
PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
FaceTarget(NPC, Spawn)
else   
if math.random(1, 100) <= 85 then
    if not HasCompletedQuest (Spawn, QUEST_1) and not HasQuest (Spawn, QUEST_1) then 
  		PlayFlavor(NPC, "voiceover/english/scribe_varion_smitelin/qey_village01/qey_village01_sage_varion_smitelin_callout_1a43b9e.mp3", "Drat!  I've only a few more bog fairy wings.  I need help retrieving more.", "doh", 1849956247, 1756752392, Spawn)
    end
end
end
end

 
    	
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if not HasCompletedQuest(Spawn, QUEST_1) then
		if HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2 then
			AddConversationOption(conversation, "I'm back with the wings as you requested.", "dlg_12_1")
		elseif GetLevel(Spawn) >= 3 then
			AddConversationOption(conversation, "Oh, very much so.", "dlg_11_1")
		end
	end
	
	if HasQuest(Spawn, REFILL_THE_OAKMYST_SPIDER_SILK_JARS) and GetQuestStep(Spawn, REFILL_THE_OAKMYST_SPIDER_SILK_JARS) == 2 then
		AddConversationOption(conversation, "I refilled your spider silk jars.", "dlg_13_1")
	end
	AddConversationOption(conversation, "Me?  No, I don't care for that finger waggling stuff.  ")
	PlayFlavor(NPC, "voiceover/english/scribe_varion_smitelin/qey_village01/varionsmitelin.mp3", "", "", 1851450511, 1137101449, Spawn)
	StartConversation(conversation, NPC, Spawn, "Interested in the magical arts, are you?")
end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/scribe_varion_smitelin/qey_village01/varionsmitelin003.mp3", "", "", 426969291, 1829151300, Spawn)
	AddConversationOption(conversation, "I don't mind getting a little dirty.  I'll take the job.", "OfferQuest1")
	AddConversationOption(conversation, "Out into the bog?  No thanks, I like to keep my clothes clean.  ")
	StartConversation(conversation, NPC, Spawn, "Good. That's what I like to hear! I'm working on a levitation spell, but I'm running low on Bog Faeries. If you go to the Peat Bog and round up some of the wings, I'll gladly pay you for this deed.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function dlg_12_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Difficult? Of course not! The Bog Faeries practically handed them to me.")
	StartConversation(conversation, NPC, Spawn, "Excellent! These will do most nicely! I hope getting the wings wasn't too difficult. As promised, here's your reward.")
end

function dlg_13_1(NPC, Spawn)
	SetStepComplete(Spawn, REFILL_THE_OAKMYST_SPIDER_SILK_JARS, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/scribe_varion_smitelin/qey_village01/varionsmitelin006.mp3", "", "", 3827990998, 3891374789, Spawn)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Thank you for refilling my jars. I knew they were empty, but could not find the time to make the trip to Oakmyst Forest. Please take this payment as a reward for your good deed.")
end