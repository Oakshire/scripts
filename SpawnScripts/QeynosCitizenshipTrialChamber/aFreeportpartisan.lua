--[[
    Script Name    : SpawnScripts/QeynosCitizenshipTrialChamber/aFreeportpartisan.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.31 05:08:02
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)

end

function hailed(NPC, Spawn)
Dialog1(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayAnimation(NPC,"539")
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Qeynos has all our exits blocked, but perhaps you can find a way to get me through!")
	Dialog.AddVoiceover("voiceover/english/a_freeport_partisan/qey_catacomb_epic01/bribingtraitor000.mp3", 3482178504, 3473502837)
	Dialog.AddOption("How would I do that?", "Dialog2")
	Dialog.AddOption("You must be punished for your crimes!", "AttackTimer")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I made arrangements to transfer my wealth to the Freeport Reserve, but mayhaps I can spare some coins if you let me go.")
	Dialog.AddVoiceover("voiceover/english/a_freeport_partisan/qey_catacomb_epic01/bribingtraitor001.mp3", 4211876752, 3637644957)
    PlayFlavor(NPC,"","","nod",0,0,Spawn)
	Dialog.AddOption("Perhaps.  I need to think upon this further.")
	Dialog.AddOption("I'm not sure I can trust you. You're here as a traitor.", "Dialog3")
	Dialog.AddOption("No, there can be no bribery.", "AttackTimer")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm not asking you to trust my word ... trust my gold!")
	Dialog.AddVoiceover("voiceover/english/a_freeport_partisan/qey_catacomb_epic01/bribingtraitor002.mp3", 298356076, 2184308899)
    PlayFlavor(NPC,"","","whome",0,0,Spawn)
	Dialog.AddOption("Interesting.  I will return shortly once I've considered this.")
	Dialog.AddOption("Tempting, but I have a duty to Qeynos.  You must face judgement for your deeds.", "AttackTimer")
	Dialog.AddOption("No way!", "AttackTimer")
	Dialog.Start()
end

function AttackTimer(NPC,Spawn)
    AddTimer(NPC,1200,"Attacking",1,Spawn)
end

function Attacking(NPC,Spawn)
    SpawnSet(NPC,"attackable",1)
    SpawnSet(NPC,"show_level",1)
    SpawnSet(NPC,"command_primary",11)
    Attack(NPC,Spawn)
end

function aggro(NPC,Spawn)
     SpawnSet(NPC,"attackable",1)
    SpawnSet(NPC,"show_level",1)
    SpawnSet(NPC,"command_primary",11)
end

function death(NPC,Spawn)
    SetStepComplete(Spawn,5718,6)
end