--[[
	Script Name		: SpawnScripts/NorthQeynos/Knight-LieutenantLaughlin.lua
	Script Purpose	: Knight-Lieutenant Laughlin
	Script Author	: Dorbin
	Script Date		: 2022.04.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

local Gnolls = 5543

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
	Dialog.AddOption("I'd be more than happy to carry the banner of Qeynos into battle with the gnolls!", "Dialog1")
	Dialog.AddOption("Gnolls?  Send a new recruit out to deal with the problem.")
	Dialog.Start()
end

function Dialog1(NPC, Spawn)
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

function Dialog4(NPC, Spawn)
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
	Dialog.AddOption("Well met to you as well.")
	Dialog.Start()
end


