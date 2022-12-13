--[[
	Script Name		: SpawnScripts/NorthQeynos/Knight-LieutenantLaughlin.lua
	Script Purpose	: Knight-Lieutenant Laughlin
	Script Author	: Dorbin
	Script Date		: 2022.04.23
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local Gnolls = 5543
local Quest2 = 5788 --Fighter Quest pt2

function spawn(NPC)
ProvidesQuest(NPC,Gnolls)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn, 11)>0 then
Dialog4(NPC, Spawn)
else
PlayFlavor(NPC,"","","shakefist",0,0,Spawn)
end
end


function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "","", "shrug", 0, 0,Spawn)
	Dialog.AddDialog("Famous, eh?  Best keep your feet planted before your head floats off.  Though, if you're looking for some recognition, I've been having some problems with the gnolls outside the gates here.  I can't spare the men to go hunt them down, you wouldn't be interested in helping out, would you?")
	Dialog.AddVoiceover("voiceover/english/optional1/knight-lieutenant_laughlin/qey_north/quests/sirlaughlin/grd_laughlin_x1_initial.mp3", 2796593065, 1366994589)
	Dialog.AddOption("I'd be more than happy to carry the banner of Qeynos into battle with the gnolls!", "OfferGnollQuest")
	Dialog.AddOption("Gnolls?  Send a new recruit out to deal with the problem.")
	Dialog.Start()
end

function OfferGnollQuest(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,Gnolls)
    end
    
function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "","", "agree", 0, 0,Spawn)
	Dialog.AddDialog("So you did... so you did.  Well met adventurer you may be famous one day after all.  Let me see, I think the city can afford to pay you a bit for your work here.  Take this bag of coins, it should suffice.")
	Dialog.AddVoiceover("voiceover/english/optional1/knight-lieutenant_laughlin/qey_north/quests/sirlaughlin/grd_laughlin_x1_finish.mp3", 689966140, 111412847)
	Dialog.AddOption("Thank you sir.  It was a pleasure to serve the city of Qeynos.","QuestFinish")
	Dialog.Start()
end

function QuestFinish(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,Gnolls, 2)
    PlayFlavor(Spawn, "","", "salute", 0, 0)
    end

function Dialog4(NPC, Spawn) --hail
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "","", "salute", 0, 0,Spawn)
    Dialog.AddDialog("Hail and well met!  Please beware that while you are safe within Qeynos' mighty walls, the outside world is not as forgiving. Dangerous creatures roam the lands beyond these gates.  Beware!")
	Dialog.AddVoiceover("voiceover/english/optional1/knight-lieutenant_laughlin/qey_north/grd_sirlaughlin.mp3", 3112487329, 768408857)
    if GetQuestStep(Spawn,Gnolls)==2 then
	Dialog.AddOption("I gave those gnolls a good thrashing, and have returned with the ten ears you requested.", "Dialog3")
    end
    if not HasQuest(Spawn,Gnolls) and not HasCompletedQuest(Spawn,Gnolls)then
	Dialog.AddOption("I won't let danger stand in my way.  I'm going to be famous one day!", "Dialog2")
	Dialog.AddOption("Erk! Dangerous creatures?  I think I'll stay inside the gates!")
    end
    if HasQuest(Spawn,Quest2) and GetQuestStep(Spawn,Quest2)>=1 and GetQuestStep(Spawn,Quest2)<=3 and not QuestStepIsComplete(Spawn,Quest2,1) then
	Dialog.AddOption("What made you decide to be a guard?","Dialog1")
    end
    Dialog.AddOption("Well met to you as well.")
	Dialog.Start()
end

function Dialog1(NPC, Spawn) --NO VOs for the below fighter quest pt2
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "","", "ponder", 0, 0,Spawn)
	Dialog.AddDialog("Hmm, in my younger years I sought adventure like you. I suppose after being picked up a number of times by guards on patrol I thought - \"Hey, I could do that!\". I've enjoyed being able to repay the kindness to citizens of Qeynos.")
	--Dialog.AddVoiceover("voiceover/english/optional1/knight-lieutenant_laughlin/qey_north/quests/sirlaughlin/grd_laughlin_x1_finish.mp3", 689966140, 111412847)--
	Dialog.AddOption("We all certainly have the guard to thank.","Dialog1a")
	Dialog.Start()
end


function Dialog1a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "","", "agree", 0, 0,Spawn)
	Dialog.AddDialog("I believe so as well, but not often do I hear appreciatation like that. Thank you! So many seem to treat the guard as part of the background, but it our vigilance that keeps Qeynos safe.")
	--Dialog.AddVoiceover("voiceover/english/optional1/knight-lieutenant_laughlin/qey_north/quests/sirlaughlin/grd_laughlin_x1_finish.mp3", 689966140, 111412847)
	Dialog.AddOption("Keep up the great work!","Dialog1b")
	Dialog.Start()
end

function Dialog1b(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,Quest2, 1)
    PlayFlavor(NPC, "","", "salute", 0, 0)
    end