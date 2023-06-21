--[[
    Script Name    : SpawnScripts/Antonica/TimothusYelrow.lua
    Script Author  : Premierio015
    Script Date    : 2023.04.01 10:04:44
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local CorroboratingTheExistenceOfTheStormholdLibrary  = 5794 -- quest ID

function spawn(NPC)
ProvidesQuest(NPC, CorroboratingTheExistenceOfTheStormholdLibrary)
    SetInfoStructString(NPC, "action_state", "ponder")
end

function hailed(NPC, Spawn)
	 Option0(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end


function Option0(NPC, Spawn)
 	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You ... you interrupted my meditation! Do you not know the importance of my work here?")
    PlayFlavor(NPC,"","","glare",0,0,Spawn)
 	Dialog.AddVoiceover("voiceover/english/timothus_yerlow/antonica/timothusyelrow000.mp3", 3793699974, 4104951669)
    if CanReceiveQuest(Spawn, CorroboratingTheExistenceOfTheStormholdLibrary) then
	Dialog.AddOption("I just wanted to know why you were out here by yourself.", "Option1")
	elseif GetQuestStep(Spawn, CorroboratingTheExistenceOfTheStormholdLibrary)==2 then
	Dialog.AddOption("I found the library in Stormhold.  Almost all the books had \"Karana\" in the title in one form or another.", "Option3")
	end
	Dialog.AddOption("I'm sorry, I didn't mean to disturb you.  I'll be going now.")
	Dialog.Start()
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("To avoid obnoxious individuals like you from disturbing me! Well ... if you must know, I am waiting here for my associate to confirm some rumors.")
    Dialog.AddVoiceover("voiceover/english/timothus_yerlow/antonica/timothusyelrow001.mp3", 1639140719, 2392770436) 
    PlayFlavor(NPC,"","","scold",0,0,Spawn)
	Dialog.AddOption("What rumors have you heard?", "Option2")
	Dialog.AddOption("One of you seems bad enough, I don't think I'll stay around to meet an associate.  ")
	Dialog.Start()
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
 	Dialog.AddDialog("Aren't you inquisitive! Not that it does you any good.  I have received information that Stormhold - the hidden fortress of the Knights of Thunder - has been found. Anyone remotely knowledgeable knows that the Knights kept a cache of large magical books of spells and incantations called tomes. But I never trust rumors. I am a man of learning, and I require a reliable witness. Therefore, I wait.")
    Dialog.AddVoiceover("voiceover/english/timothus_yerlow/antonica/timothusyelrow002.mp3", 3652823892, 4095654623)
    PlayFlavor(NPC,"","","agree",0,0,Spawn)
	Dialog.AddOption("I can find this library for you, but it'll cost you.", "offer")
	Dialog.AddOption("I hope your friend can back up the story.  ")
	Dialog.Start()
end

function Option3(NPC, Spawn)
    SetStepComplete(Spawn, CorroboratingTheExistenceOfTheStormholdLibrary, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hmm ... this indeed verifies what I was previously told.  Here is your coin, I have much thinking to do.")
    Dialog.AddVoiceover("voiceover/english/timothus_yerlow/antonica/timothusyelrow004.mp3", 919338533, 415565513)
    PlayFlavor(NPC,"","","ponder",0,0,Spawn)
	Dialog.AddOption("Thanks for the money.")
	Dialog.Start()
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, CorroboratingTheExistenceOfTheStormholdLibrary)
end




function respawn(NPC)
	spawn(NPC)
end