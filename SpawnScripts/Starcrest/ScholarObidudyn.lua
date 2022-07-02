--[[
	Script Name	: SpawnScripts/Starcrest/ScholarObidudyn.lua
	Script Purpose	: Scholar Obidudyn 
	Script Author	: Dorbin
	Script Date	: 07.01.2022
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")		
    ProvidesQuest(NPC,5600)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
else
    if  HasCompletedQuest(Spawn,5600)then
	local chance = math.random(0, 100)
	if chance <= 80 then
	PlayFlavor(NPC, "", "", "tapfoot", 0, 0, Spawn, 0)
    end
elseif not HasQuest(Spawn, 5600) and not HasCompletedQuest(Spawn,5600)then
	local chance = math.random(0, 100)
	if chance <= 80 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/scholar_obidudyn/qey_village02/100_erudite_scholar_callout_9435d1c5.mp3", "Oh, a moment of peace. What I'd give for one moment without little human girls, felines ... or inquisitive adventurers... What do you want? Unless you're of any use, get out of my sight.", "", 3858056740, 933386302, Spawn)
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
	Dialog.AddDialog("Oh to have a moment of peace. A moment without little human girls or felines ... or inquisitive adventurers...")
	Dialog.AddVoiceover("voiceover/english/scholar_obidudyn/qey_village02/scholarobidudyn000.mp3", 139374477, 106530516)
 	if not HasCompletedQuest (Spawn, 5600) and not HasQuest (Spawn, 5600) then 
	Dialog.AddOption("You must have a reason for stay here then.  What are you contemplating?","Dialog2")
    end
    if GetQuestStep (Spawn, 5600)==2 then 
	Dialog.AddOption("I've returned with the elemental essences you needed for your research.","Delivered")
    end
    Dialog.AddOption("Just passing by. Good day.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddDialog("I don't expect your feeble mind to comprehend my wisdom of elemental summoning.  If it weren't for all my disruptions I would be a summoner of great renown!  However, you do seem curious.  Perhaps you could help me with a simple task.")
	Dialog.AddVoiceover("voiceover/english/scholar_obidudyn/qey_village02/scholarobidudyn001.mp3", 2445829460, 388945180)
	Dialog.AddOption("I am actually curious.  What can I do to help your research?", "QuestBegin")
	Dialog.AddOption("You'll have to go finish your simple task with all that wisdom. Goodbye.")
	Dialog.Start()
end

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, 5600)
end

function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    SetStepComplete(Spawn, 5600, 2)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddDialog("Impressive!  You accomplished that task rather quickly.  I imagined it would take you much longer.  Prehaps you are not as dimwitted as I first precieved.  No matter.  Here is the coin I promised for the essences.  May your thirst for knowledge know no bounderies.")
	Dialog.AddVoiceover("voiceover/english/scholar_obidudyn/qey_village02/scholarobidudyn002.mp3", 139374477, 106530516)
	Dialog.AddOption("Glad to be of assistance.")
	Dialog.AddOption("Thanks... I think?")
	Dialog.Start()
end