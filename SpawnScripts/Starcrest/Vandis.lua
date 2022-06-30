--[[
	Script Name	: SpawnScripts/Starcrest/Vandis.lua
	Script Purpose	: Vandis 
	Script Author	: Dorbin
	Script Date	: 06.29.2022
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    SetTarget(NPC,Spawn)
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
	PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddDialog("Can't you see I'm in the middle of a game of King's Field?  And no, you can't help!")
	Dialog.AddVoiceover("voiceover/english/vandis/qey_village02/vandis.mp3", 555689921, 1189263301)
    if GetQuestStep (Spawn, 245)==1 then 
	Dialog.AddOption("Molly's cat found this.  Is it part of your King's Field game?","Done")
    end
	Dialog.AddOption("I'm not going to say anything.  I can see you are losing well enough on your own.  ")
	Dialog.Start()
end

function Done(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "boggle", 0, 0, Spawn)
    SetStepComplete(Spawn, 245, 1)
	Dialog.AddDialog("What is this?  A missing piece? And from my color?!  Hey!  I've been playing without this piece!  No wonder I've been doing so badly!")
	Dialog.AddVoiceover("voiceover/english/vandis/qey_village02/vandis000.mp3", 1565383947, 2869392251)
	Dialog.AddOption("Well, I hope it helps!")
	Dialog.AddOption("There may be more than just that piece enflucing your game.")
	Dialog.Start()
end