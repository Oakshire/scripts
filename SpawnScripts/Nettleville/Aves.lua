--[[
	Script Name	: SpawnScripts/Nettleville/Aves.lua
	Script Purpose	: Aves 
	Script Author	: Scatman
	Script Date	: 2009.08.12
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"
local FPStout = 5595

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
 	FaceTarget(NPC, Spawn)
 	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    else
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddDialog("Shhh!  Keep your voice down.  Unless my brother sent you, I suggest you find another place to wait for the ferry.")
	Dialog.AddVoiceover("voiceover/english/aves/qey_village01/aves000.mp3", 3237492483, 2034262045)
    if not HasQuest(Spawn,FPStout) and not HasCompletedQuest (Spawn, FPStout) then 
        Dialog.AddOption("Um... I don't even know who your brother is.  I think I'll leave you alone")
    end
    if GetQuestStep (Spawn, FPStout)==1 then 
        Dialog.AddOption("Your brother actually sent me to pick up a delivery for him.","FPStoutTurnin")
    end
    if HasCompletedQuest (Spawn, FPStout) then 
        Dialog.AddOption("I've done all I care to do for you and your brother.  Good day.")
    end
	Dialog.Start()
end
end

function FPStoutTurnin(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good good!  Here is the small crate he wants.  Take it straight to him and don't stop to converse with any guards.  I'd take it to him but my face is too... famous around these parts.")
	Dialog.AddVoiceover("voiceover/english/aves/qey_village01/aves001.mp3", 854559524, 3758157918)
	Dialog.AddOption("Should I be concerned about what is in this crate?", "FPStoutTurnin2")
	Dialog.Start()
end

function FPStoutTurnin2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC,"","","shrug",0,0,Spawn)
	Dialog.AddDialog("Well, considering you're carrying some of Freeport's finest stout, I don't think making small talk with the guards is wise.  They don't take kindly to hooch crossing in these walls.  Now, hurry back to Verth.  By now he's dry as a bone!")
	Dialog.AddVoiceover("voiceover/english/aves/qey_village01/aves002.mp3", 1813890327, 1734189734)
	Dialog.AddOption("...Alright.", "QuestUpdate")
	Dialog.Start()
end

function QuestUpdate(NPC, Spawn)
        SetStepComplete(Spawn, FPStout, 1)
end