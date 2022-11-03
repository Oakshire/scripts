--[[
    Script Name    : SpawnScripts/Nettleville/CarolineCopperstone.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.25 05:06:38
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")		
end

function respawn(NPC)
	spawn(NPC)
end


function InRange(NPC, Spawn)
if HasQuest(Spawn,5763) and GetQuestStep(Spawn,5763)==4 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/banker_caroline_copperstone/qey_village01/qey_village01_banker_carolyn_copperstone_housing_quest_1_53e2b5fb.mp3", "If you're opening a new account, I can help you over here.", "bye", 550141816, 3234724547, Spawn)
end
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11) <0 then
	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
elseif HasQuest(Spawn,5763) and GetQuestStep(Spawn,5763)==4 then
Dialog2(NPC, Spawn)
else
Dialog1(NPC, Spawn)
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Welcome friend.  How can we at the Qeynos Exchange help you?")
	Dialog.AddVoiceover("voiceover/english/banker_caroline_copperstone/qey_village01/banker_carolyn_copperstone001.mp3", 3418604126,1802065171)
	PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
	Dialog.AddOption("Nothing right now, thank you.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I see the caretaker gave you my message. I'll help you open your account. First, I need some information from you. What's your name?")
	Dialog.AddVoiceover("voiceover/english/banker_caroline_copperstone/qey_village01/banker_carolyn_copperstone002.mp3", 2567141347, 2451251964)
	Dialog.AddOption(""..GetName(Spawn).."","Dialog2a")
	Dialog.Start()
end

function Dialog2a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Occupation?")
	Dialog.AddVoiceover("voiceover/english/banker_caroline_copperstone/qey_village01/banker_carolyn_copperstone003.mp3", 1449224739, 333296052)
	Dialog.AddOption("Adventurer","Dialog2b")
	Dialog.AddOption("Crafter","Dialog2b")
    if GetRace(Spawn)==9 then
	Dialog.AddOption("Formly a used horse salesperson before the cataclysm.","Dialog2b")
    elseif GetRace(Spawn)==11 then
	Dialog.AddOption("I'd say box inspector, but I guess I should just put down Adventurer.","Dialog2b")
    end
	Dialog.Start()
end

function Dialog2b(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That works. Finally, will you follow the rule of not depositing in your account any poison plants, live animals or dangerous potions?")
	Dialog.AddVoiceover("voiceover/english/banker_caroline_copperstone/qey_village01/banker_carolyn_copperstone004.mp3", 1001305873, 3055692898)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Hmmm... okay, I agree.","Dialog2c")
	Dialog.AddOption("You've got warnings for everything! Yes, I understand.","Dialog2c")
	Dialog.AddOption("Yes... is that really a question?","Dialog2c")
	Dialog.Start()
end

function Dialog2c(NPC, Spawn)
if HasQuest(Spawn,5763) and GetQuestStep(Spawn,5763)==4 then
    SetStepComplete(Spawn, 5763,4)
end
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Excellent! Your account is open, and a spot is reserved for you in the vaults. Please visit us anytime with your banking needs. Do you need anything else?")
	Dialog.AddVoiceover("voiceover/english/banker_caroline_copperstone/qey_village01/banker_carolyn_copperstone005.mp3", 2301459090, 3948003852)
	PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
	Dialog.AddOption("Not right now.")
	Dialog.Start()
end