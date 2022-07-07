--[[
	Script Name	: SpawnScripts/Nettleville/CaylessChambers.lua
	Script Purpose	: Cayless Chambers <Armorsmith>
	Script Author	: Dorbin
	Script Date	: 2022.06.25
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")		
    ProvidesQuest(NPC,5599)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
else
if not HasQuest(Spawn, 5599) and not HasCompletedQuest(Spawn,5599)then
	local chance = math.random(0, 100)
    if chance <= 80 then
	local choice = MakeRandomInt(1,2)
	FaceTarget(NPC, Spawn)
	if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/smith_cayless_chambers/qey_village01/qey_village01_blacksmith_cayless_chambers_callout1_e4015547.mp3", "So busy... I'll never have time to visit the Claymore Monument.  Could you spare a moment?", "sigh", 3001484550, 1530588244, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/smith_cayless_chambers/qey_village01/qey_village01_blacksmith_cayless_chambers_multhail2_ff591044.mp3", "I can trust you wield a pencil as well as you yield a sword.  Are you interested?", "hello", 1977979265, 3455148298, Spawn, 0)
    end
    end
elseif HasQuest(Spawn, 5599)then
 	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/smith_cayless_chambers/qey_village01/qey_village01_blacksmith_cayless_chambers_multhail4_e6c82589.mp3", "Are you finished?  I hope you don't need another pencil.  That was my last one!  Now hurry and finish my sketch!", "ponder", 933986448, 3135769704, Spawn, 0)
end
    end
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "noway", 0, 0, Spawn)
else
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Welcome to the Knight's Edge. Looking for fine quality armors? I'm your lady.  Place your order and stand back.")
	Dialog.AddVoiceover("voiceover/english/smith_cayless_chambers/qey_village01/smithcayless000.mp3", 360119992, 780476339)
 	if not HasCompletedQuest (Spawn, 5599) and not HasQuest (Spawn, 5599) then 
	Dialog.AddOption("Have any tasks you need completed?  I've got some time if you need a hand.","Start")
    end
    if GetQuestStep (Spawn, 5599)==2 then 
	Dialog.AddOption("Here is the sketch of the Claymore Monument.  I hope it works for your needs.","Delivered")
    end
    Dialog.AddOption("Just looking.")
	Dialog.Start()
end
end

function Start(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddDialog("Looking for work are we?  I do have a task for you but I can't promise it pays heavy coin.  But, at least it shall fill some space in your coin purse.")
	Dialog.AddVoiceover("voiceover/english/smith_cayless_chambers/qey_village01/smithcayless001.mp3", 3914052449, 3223841210)
	Dialog.AddOption("I would be happy for the work.  Tell me what needs doing and I'll do it for you.", "QuestBegin")
	Dialog.AddOption("Hmm, I'm actually looking for something that pays well.  Perhaps you will find someone else.")
	Dialog.Start()
end

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, 5599)
end

function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
	Dialog.AddDialog("Great work!  This sketch will help me copy every detail of the original sword.  As for payment, this is all I can afford.")
	SetStepComplete(Spawn, 5599, 2)
    Dialog.AddVoiceover("voiceover/english/smith_cayless_chambers/qey_village01/smithcayless003.mp3", 1409147876, 2669680807)
	Dialog.AddOption("This is fine.  I'm just glad I could help.")
	Dialog.AddOption("This sketch easel is more than enough.  Thank you.")
	Dialog.Start()
end
