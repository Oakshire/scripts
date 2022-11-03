--[[
    Script Name    : SpawnScripts/Starcrest/Orudormo.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.24 04:02:50
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
function spawn(NPC)
    SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

local Deposit = 5490


function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if HasQuest(Spawn,5762) and GetQuestStep(Spawn,5762)==4 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/banker_orudormo/qey_village02/100_banker_housing_quest_1_53e2b5fb.mp3", "If you're opening a new account, I can help you over here.", "bye", 2126160201, 1961468077, Spawn)
end
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11) <0 then
	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
elseif HasQuest(Spawn,5762) and GetQuestStep(Spawn,5762)==4 then
Dialog2(NPC, Spawn)
else
Dialog1(NPC, Spawn)
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Don't worry about the safety of your assets. We meticulously manage our accounts and currancy.")
	Dialog.AddVoiceover("voiceover/english/banker_orudormo/qey_village02/bankerorudormo.mp3", 3443069835,648383583)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)	
    if GetQuestStep(Spawn, Deposit)==1 then     
	Dialog.AddOption("I'm here to make a deposit for Grekin.", "Deposit1")
    end
    Dialog.AddOption("That is good to know.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I see the caretaker gave you my message. I'll help you open your account. First, I need some information from you. What's your name?")
	Dialog.AddVoiceover("voiceover/english/banker_orudormo/qey_village02/bankerorudormo002.mp3", 1870118793,458195915)
	Dialog.AddOption(""..GetName(Spawn).."","Dialog2a")
	Dialog.Start()
end

function Dialog2a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Occupation?")
	Dialog.AddVoiceover("voiceover/english/banker_orudormo/qey_village02/bankerorudormo003.mp3", 1158160371,116927725)
	Dialog.AddOption("Adventurer","Dialog2b")
	Dialog.AddOption("Crafter","Dialog2b")
    if GetRace(Spawn)==3 then
	Dialog.AddOption("Metaphysical Phylosopher and part-time Adventurer","Dialog2b")
    elseif GetRace(Spawn)==9 then
	Dialog.AddOption("You think I'm here to work? I'm just looking for some quiet!","Dialog2b")
    elseif GetRace(Spawn)==20 then
	Dialog.AddOption("A former pawn of a dragon lord?  Just put down Mercenary.","Dialog2b")
    end
	Dialog.Start()
end

function Dialog2b(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That works. Finally, will you follow the rule of not depositing in your account any poison plants, live animals or dangerous potions?")
	Dialog.AddVoiceover("voiceover/english/banker_orudormo/qey_village02/bankerorudormo004.mp3", 2550878190,825612435)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Hmmm... okay, I agree.","Dialog2c")
	Dialog.AddOption("Do you think me a fool? Of course I won't keep those things here.","Dialog2c")
	Dialog.AddOption("Yes... is that really a question?","Dialog2c")
	Dialog.Start()
end

function Dialog2c(NPC, Spawn)
if HasQuest(Spawn,5762) and GetQuestStep(Spawn,5762)==4 then
    SetStepComplete(Spawn, 5762,4)
end
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Excellent! Your account is open, and a spot is reserved for you in the vaults. Please visit us anytime with your banking needs. Do you need anything else?")
	Dialog.AddVoiceover("voiceover/english/banker_orudormo/qey_village02/bankerorudormo005.mp3", 3256984469,19476986)
	PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
	Dialog.AddOption("Not right now.")
	Dialog.AddOption("Can I be certain my items will be safe here?","Dialog1")
	Dialog.Start()
end

 function Deposit1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I thought he'd make the deposit, but I suppose it doesn't matter who does it as long as it gets to the bank. Do you need anything else?")
	Dialog.AddVoiceover("voiceover/english/banker_orudormo/qey_village02/bankerorudormo000.mp3", 3783803084,3333586894)
    PlayFlavor(NPC, "", "", "shrug", 0, 0, Spawn)	
	Dialog.AddOption("I need the recpit. Thank you.", "Deposit2")
	Dialog.Start()
end 

function Deposit2(NPC, Spawn)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)	
    SetStepComplete(Spawn, Deposit, 1)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, yes, of course you do.  Now, be sure Grekin gets this.")
	Dialog.AddVoiceover("voiceover/english/banker_orudormo/qey_village02/bankerorudormo001.mp3", 2721158125,3178828545)
	Dialog.AddOption("I will.")
	Dialog.Start()
end
