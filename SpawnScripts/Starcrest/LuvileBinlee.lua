--[[
	Script Name	: SpawnScripts/Starcrest/LuvileBinlee.lua
	Script Purpose	: Luvile Binlee 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
local Quest1 = 5787


require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm contemplating how this tree symbolizes a person's life ... We all come from a solid trunk grounded in history, and the tree branches represent the random choices we make in life...")
	Dialog.AddVoiceover("voiceover/english/optional5/luvile_binlee/qey_village02/luvilebinlee000.mp3", 2956622106, 3546014069)
    if HasQuest(Spawn,Quest1) and GetQuestStep(Spawn,Quest1)>=3 and GetQuestStep(Spawn,Quest1)<=4 and not QuestStepIsComplete(Spawn,Quest1,3) then
	Dialog.AddOption("Dagorel said you know how not to get hit.","Dialog2")
    end
	Dialog.AddOption("That's a bit deep for me.  Sorry for bothering your meditations.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hmm, I suppose I could show you a few things. You must have shown some promise for Dagorel to send you my way... Let's see what you can do. I want you to try to punch me.")
    PlayFlavor(NPC, "", "", "sit_exit", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/optional5/luvile_binlee/qey_village02/luvilebinlee001.mp3", 0, 0)
	Dialog.AddOption("I don't want to hurt you.","Dialog3")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Don't trouble yourself with that. Like the leaves in this tree, I move with the air around me. It is important you learn the flow of combat... now, let us begin. Try to hit me and don't stop until you do or until you become too tired to continue.")
    PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/optional5/luvile_binlee/qey_village02/luvilebinlee002.mp3", 0, 0)
	Dialog.AddOption("[punch at Luvile's face]","Dialog4")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(Spawn, NPC)
  PlayFlavor(Spawn, "", "", "pugilist_attack", 0, 0, NPC)
    AddTimer(NPC,800,"Dialog4a",1,Spawn)
end

function Dialog4a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Too slow. Try again.")
    PlayFlavor(NPC, "", "", "monk_dodge_down", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/optional5/luvile_binlee/qey_village02/luvilebinlee002.mp3", 0, 0)
	Dialog.AddOption("[punch at Luvile's chest]","Dialog5")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(Spawn, NPC)
  PlayFlavor(Spawn, "", "", "pugilist_attack02", 0, 0, NPC)
    AddTimer(NPC,800,"Dialog5a",1,Spawn)
end

function Dialog5a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Again. Aim carefully.")
    PlayFlavor(NPC, "", "", "monk_dodge_backhand", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/optional5/luvile_binlee/qey_village02/luvilebinlee004.mp3", 0, 0)
	Dialog.AddOption("[punch at Luvile's stomach]","Dialog6")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(Spawn, NPC)
  PlayFlavor(Spawn, "", "", "pugilist_attack", 0, 0, NPC)
    AddTimer(NPC,800,"Dialog6a",1,Spawn)
end

function Dialog6a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Close! Try again.")
    PlayFlavor(NPC, "", "", "1h_pierce_dodge_thrust", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/optional5/luvile_binlee/qey_village02/luvilebinlee004.mp3", 0, 0)
	Dialog.AddOption("[punch at Luvile's side]","Dialog7")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(Spawn, NPC)
    PlayFlavor(Spawn, "", "", "pugilist_wild_swing", 0, 0, NPC)
    AddTimer(NPC,800,"Dialog7a",1,Spawn)
end

function Dialog7a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Aha!  I didn't see that coming! You landed a blow! I showed you how a brawler avoids strikes, and you showed me that I need to continue my training. We both benefited from today's lesson.  I wish you success with Dagorel's guidance.")
    PlayFlavor(NPC, "", "", "1h_sword_parry_thrust", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/optional5/luvile_binlee/qey_village02/luvilebinlee004.mp3", 0, 0)
	Dialog.AddOption("Thank you, Luvile.  Good day.","Dialog8")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
    if HasQuest(Spawn,Quest1) and not QuestStepIsComplete(Spawn,Quest1,3) then
     SetStepComplete(Spawn,Quest1,3)
    end
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "bow", 0, 0, Spawn)
end
