--[[
	Script Name	: SpawnScripts/Nettleville/VarionSmitelin.lua
	Script Purpose	: Varion Smitelin <Spell Scrolls>
	Script Author	: Scatman
	Script Date	: 2009.08.12
	Script Notes	: Completely restructured script using new format - 07.04.2022 Dorbin
--]]
require "SpawnScripts/Generic/DialogModule"

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
if GetFactionAmount(Spawn,11)<0 then
	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
else
Dialog1(NPC, Spawn)
end
end

  
function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
	Dialog.AddDialog("Interested in the magical arts, are you?")
	Dialog.AddVoiceover("voiceover/english/scribe_varion_smitelin/qey_village01/varionsmitelin.mp3", 1851450511, 1137101449)
 	if not HasCompletedQuest (Spawn, QUEST_1) and not HasQuest (Spawn, QUEST_1) then 
	Dialog.AddOption("Oh, very much so.","Dialog4")
    end
    if GetQuestStep (Spawn, QUEST_1)==2 then 
	Dialog.AddOption("I'm back with the wings as you requested.","Dialog2")
    end
	if GetQuestStep(Spawn, REFILL_THE_OAKMYST_SPIDER_SILK_JARS) == 2 then
	Dialog.AddOption("Here are a couple jars of spider silk. I noticed you were out.","Dialog6")
    end
	if GetQuestStep(Spawn, 5604) == 1 then
	Dialog.AddOption("I've been sent by Zentomaron Croosinaden to retrieve a scoll of erudite lore.  Do you have it?","Dialog7")
    end
    Dialog.AddOption("Me?  No, I don't care for that finger waggling stuff.")
	Dialog.Start()
end
    
-- Bog Fairie Wings
  
function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddDialog("Good. That's what I like to hear! I'm working on a levitation spell, but I'm running low on Bog Faeries. If you go to the Peat Bog and round up some of the wings, I'll gladly pay you for this deed.")
	Dialog.AddVoiceover("voiceover/english/scribe_varion_smitelin/qey_village01/varionsmitelin003.mp3", 426969291, 1829151300)
	Dialog.AddOption("I don't mind getting a little dirty.  I'll take the job.", "OfferQuest1")
	Dialog.AddOption("Out into the bog?  No thanks, I like to keep my clothes clean.  ")
	Dialog.Start()
end


function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end


function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	Dialog.AddDialog("Excellent!  These will do most nicely! I hope getting the wings wasn't too difficult. As promised, here's your reward. ")
	Dialog.AddVoiceover("voiceover/english/scribe_varion_smitelin/qey_village01/varionsmitelin005.mp3", 3625693833, 1398155062)
	Dialog.AddOption("Difficult? Of course not! The Bog Faeries practically handed them to me.")
	Dialog.Start()
end

-- Spider Silk Jars
function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	SetStepComplete(Spawn, REFILL_THE_OAKMYST_SPIDER_SILK_JARS, 2)
	PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
	Dialog.AddDialog("Thank you for refilling my jars. I knew they were empty, but could not find the time to make the trip to Oakmyst Forest. Please take this payment as a reward for your good deed.")
	Dialog.AddVoiceover("voiceover/english/scribe_varion_smitelin/qey_village01/varionsmitelin006.mp3", 3827990998, 3891374789)
	Dialog.AddOption("Thank you.")
	Dialog.Start()
end

-- Erudite Scroll
function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
	Dialog.AddDialog("Of course he did.  I'm sure he gave you the story about needing the scroll for some scholarly debate!")
	Dialog.AddVoiceover("voiceover/english/scribe_varion_smitelin/qey_village01/varionsmitelin000.mp3", 3145879327, 1053999680)
	Dialog.AddOption("How did you know?","Dialog8")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I knew because he debated the issue in my shop for fourteen hours!  Have you ever tried to stop a debate between two erudites?  Fat chance!  I was a prisoner in my own keep!  At any rate, Zentomaron is no longer welcome here.")
	Dialog.AddVoiceover("voiceover/english/scribe_varion_smitelin/qey_village01/varionsmitelin001.mp3", 3217131008, 3632064352)
	Dialog.AddOption("But what about the scroll?  Do you have it in your shop?","Dialog9")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddDialog("Oh yes- back to that.  Tell him I know of the scroll he's looking for but I don't have it!  Oh, and if he is pestering my nephew tell him to leave him alone!  He doesn't know where the scroll is either.")
	Dialog.AddVoiceover("voiceover/english/scribe_varion_smitelin/qey_village01/varionsmitelin002.mp3", 1591190372, 4256691956)
	Dialog.AddOption("That is unfortunate.  I will let Zentomaron know.","ScrollUpdate")
	Dialog.Start()
end

function ScrollUpdate(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SetStepComplete(Spawn, 5604, 1)
end