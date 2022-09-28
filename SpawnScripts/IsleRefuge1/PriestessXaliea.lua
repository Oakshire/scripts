--[[
    Script Name    : SpawnScripts/IsleRefuge1/PriestessXaliea.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.25 03:09:32
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local Bones = 5754

function spawn(NPC)
ProvidesQuest(NPC,Bones)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if not HasQuest(Spawn, Bones) and not HasCompletedQuest(Spawn, Bones) then
    Dialog1(NPC, Spawn)
    elseif GetQuestStep(Spawn, Bones) < 2 and not HasCompletedQuest(Spawn, Bones) then
    Dialog6(NPC, Spawn)
    elseif GetQuestStep(Spawn, Bones) == 2 and not HasCompletedQuest(Spawn, Bones) then
    Dialog7(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, Bones) then
    PlayFlavor(NPC, "voiceover/english/priestess_xaliea/tutorial_island02_fvo_hail1.mp3", "Yeah, yeah. Heal this, cure that. Keep moving.", "sniff", 3735315332, 426916800, Spawn)
    end
end

function respawn(NPC)
	spawn(NPC)
end


function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The life of a priestess isn't all posies and butterflies, you know? We aren't just here to heal and give you blessings.")
	Dialog.AddVoiceover("voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_firsttalk_01.mp3", 1619628529, 3389802510)
    PlayFlavor(NPC,"","","scold",0,0,Spawn)
	Dialog.AddOption("You aren't?", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("No! There's so much more to our way of life. We constantly battle against the ever rising ranks of the undead. If it wasn't for us, you'd all have your brains sucked out by a legion of zombies!")
	Dialog.AddVoiceover("voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_firsttalk_02.mp3", 2464873714, 2323246094)
    PlayFlavor(NPC,"","","no",0,0,Spawn)
	Dialog.AddOption("Why don't you let out some steam and go take down some skeletons or something?", "Dialog3")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I can't leave my post.")
	Dialog.AddVoiceover("voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_firsttalk_04.mp3", 585972363, 27232816)
	Dialog.AddOption("Sorry to hear that.", "Dialog4")
	Dialog.Start()
end


function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hmm, but you can get around freely, can't you? Maybe you could help an old priestess relive her glory days?")
	Dialog.AddVoiceover("voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_firsttalk_05.mp3", 2300229103, 3393998851)
    PlayFlavor(NPC,"","","ponder",0,0,Spawn)
	Dialog.AddOption("How do you propose I do that?", "Dialog5")
	Dialog.AddOption("Not today, sorry.")
	Dialog.Start()
end



function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Go find these skeletons and slay them. If you bring me three bone chips from them, I'll make this all worth your while.")
	Dialog.AddVoiceover("voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_firsttalk_06.mp3", 3310184043, 4007538840)
	Dialog.AddOption("I'll do it.", "QuestOffer")
	Dialog.AddOption("Not right now.")
	Dialog.Start()
end

function QuestOffer(NPC,Spawn)
    OfferQuest(NPC,Spawn,Bones)
	FaceTarget(NPC, Spawn)
end    


function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I can hear them, out there in the distance. Their bones are rattling and crackling. Oh! How I want to feel them crumble beneath my grasp. Hurry up, bring me those bone chips!")
    PlayFlavor(NPC,"","","scheme",0,0,Spawn)
	Dialog.AddVoiceover("voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_secondtalk_01.mp3", 125454777, 4152864248)
	Dialog.AddOption("I will do so.")
	Dialog.Start()
end


function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah, the sweet smell of death! They're so dry and brittle, just like I remembered. Thank you.")
	Dialog.AddVoiceover("voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_finaltalk_01.mp3", 3450984862, 1970143622)
    PlayFlavor(NPC,"","","cackle",0,0,Spawn)
	Dialog.AddOption("You're welcome.", "Dialog8")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Here, take these coins. This should be more than what the merchant would give you for these beauties.")
	Dialog.AddVoiceover("voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_finaltalk_02.mp3", 1023024209, 1047449217)
    PlayFlavor(NPC,"","","thanks",0,0,Spawn)
	Dialog.AddOption("Thank you.")
	Dialog.Start()
    SetStepComplete(Spawn, Bones, 2)
end

