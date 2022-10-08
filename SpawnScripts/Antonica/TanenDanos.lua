--[[
    Script Name    : SpawnScripts/Antonica/TanenDanos.lua
    Script Author  : Premierio015
    Script Date    : 2021.09.05 03:09:23
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local TheWhereaboutsOfClanMcMarrin = 5716

function spawn(NPC)
ProvidesQuest(NPC, TheWhereaboutsOfClanMcMarrin)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello there, adventurer.  You must be a mite weary from your travels.  Relax and have a drink of my personal brew.  Barbarians brew the hardiest ales you'll ever put to your lips.  You ever hear of ol' Clan McMarrin's  \"Blizzard Warmer?\"  That'll keep you going on those cold wintry nights!")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1062.mp3", 0, 0)
    PlayFlavor(NPC,"","","hello",0,0,Spawn)
    if not HasQuest(Spawn, TheWhereaboutsOfClanMcMarrin) and not HasCompletedQuest(Spawn, TheWhereaboutsOfClanMcMarrin) then
	Dialog.AddOption("Who is Clan McMarrin?", "Option1")
	elseif GetQuestStep(Spawn, TheWhereaboutsOfClanMcMarrin) == 2 then
	Dialog.AddOption("I found the remains of a site out in the Thundering Steppes.  I was able to recover this journal.", "Option2")
	end
	Dialog.AddOption("I'll take a look at what you have on tap.")
	Dialog.Start()
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Clan McMarrin was a clan of the toughest barbarian warriors to have called dear old Halas home.  They have not been heard of for some time though.  After the Shattering they set out to find a place that barbarians could live as they did in Halas.  Word was they were looking toward the Thundering Steppes last anyone knew.")
    PlayFlavor(NPC,"","","orate",0,0,Spawn)
	Dialog.AddOption("I'll keep an eye out for them if I am out in that area.", "offer")
	Dialog.AddOption("I hope they have found a place to settle.")
	Dialog.Start()
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("An expedition journal of Clan McMarrin!  May I take a gander at it?  It says that they feared another giant attack and the journal is incomplete.  This doesn't bode well for the history of Clan McMarrin I'm afraid...  I would be willing to buy this journal from you so that I may study it.")
	Dialog.AddOption("Yes, I'll sell the journal to you.", "Option3")
	Dialog.AddOption("No, I would like to keep it a bit longer.")
	Dialog.Start()
end


function Option3(NPC, Spawn)
    SetStepComplete(Spawn, TheWhereaboutsOfClanMcMarrin, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Thank you.  I look forward to reading how they did on their journey.  It doesn't say they perished ya know.  They could have just left this in a hurry.")
	Dialog.AddOption("You are right, they probably just dropped it.")
	Dialog.Start()
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, TheWhereaboutsOfClanMcMarrin)
end





function respawn(NPC)
	spawn(NPC)
end