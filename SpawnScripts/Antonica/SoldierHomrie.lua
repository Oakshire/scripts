--[[
	Script Name		:	SoldierHomrie.lua
	Script Purpose	:	Soldier Homrie
	Script Author	:	Dorbin
	Script Date		:	08/29/2019
	Script Notes	:	
--]]

require "SpawnScripts/Generic/DialogModule"
local Quest2 = 5773

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if QuestStepIsComplete(Spawn,Quest2,3)  then
    PlayFlavor(NPC,"","Ugh... my body still aches.","",0,0,Spawn)
    else        
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Please, someone help me!  One of those ... blasted gnolls got me ... with a poison arrow.  Don't know how much time I have.")
	Dialog.AddVoiceover("voiceover/english/soldier_homrie/antonica/soldierhomrie000.mp3", 2620699462, 3560167645)
    if not HasQuest(Spawn,Quest2)then
	Dialog.AddOption("This is more than I can handle")
	elseif GetQuestStep(Spawn,Quest2)>=3 and GetQuestStep(Spawn,Quest2)<=5 then
	Dialog.AddOption("*make a tonic from nearby herbs and mosses*  Here, my friend!  Drink this!","Dialog1")
	Dialog.AddOption("Hey, you don't look that bad. Just walk it off. I've got other things to do.")
    end
    Dialog.Start()
end
end

function Dialog1(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Uhg!  Smells horrid!  You look like a priest, though.  Okay ... bottoms up! Tastes horrid, too.  What's it supposed to do, anyway?")
	Dialog.AddVoiceover("voiceover/english/soldier_homrie/antonica/soldierhomrie001.mp3", 273324420, 1739184199)
    PlayFlavor(Spawn,"","","scheme",0,0,Spawn)
	Dialog.AddOption("It'll slow the poison until you can get to a proper medic.  I must help the others now!","Dialog2")
    Dialog.Start()
    ApplySpellVisual(NPC,137)
end


function Dialog2(NPC,Spawn)
    FaceTarget(NPC,Spawn)
    SetStepComplete(Spawn,Quest2,3)    
    end