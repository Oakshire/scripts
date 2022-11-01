--[[
	Script Name	: SpawnScripts/WillowWood/Deephathom.lua
	Script Purpose	: Deephathom <Banker>
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==4 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/banker_deephathom/qey_village05/100_banker_halfelf_deephathom_housing_quest_1_53e2b5fb.mp3", "If you're opening a new account, I can help you over here.", "bye", 2132928459, 1021738095, Spawn)
end
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/banker_deephathom/qey_village05/banker_deephathom001.mp3", "", "", 1593106270, 3129539503, Spawn)
	AddConversationOption(conversation, "No, I'm not.")
	StartConversation(conversation, NPC, Spawn, "Please tell me you're not trying to get a loan with livestock collateral!")
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11) <0 then
	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
elseif HasQuest(Spawn,5761) and GetQuestStep(Spawn,5761)==4 then
Dialog2(NPC, Spawn)
else
Dialog1(NPC, Spawn)
end
end


function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Please tell me you're not trying to get a loan with livestock collateral!")
	Dialog.AddVoiceover("voiceover/english/banker_deephathom/qey_village05/banker_deephathom001.mp3", 1593106270, 3129539503)
	PlayFlavor(NPC, "", "", "tapfoot", 0, 0, Spawn)
	Dialog.AddOption("No, I'm not.")
	Dialog.Start()
end


function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I see the caretaker gave you my message. I'll help you open your account. First, I need some information from you. What's your name?")
	Dialog.AddVoiceover("voiceover/english/banker_deephathom/qey_village05/banker_deephathom002.mp3", 568039140, 269795142)
	Dialog.AddOption(""..GetName(Spawn).."","Dialog2a")
	Dialog.Start()
end

function Dialog2a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Occupation?")
	Dialog.AddVoiceover("voiceover/english/banker_deephathom/qey_village05/banker_deephathom003.mp3", 3528419430, 537050664)
	Dialog.AddOption("Adventurer","Dialog2b")
	Dialog.AddOption("Crafter","Dialog2b")
    if GetRace(Spawn)==5 then
	Dialog.AddOption("Part-Adventurer, Part-Crafter","Dialog2b")
    elseif GetRace(Spawn)==15 then
	Dialog.AddOption("Well, I can tell you I'm NOT part tree.","Dialog2b")
    elseif GetRace(Spawn)==16 then
	Dialog.AddOption("If you put down sprite...","Dialog2b")
    end
	Dialog.Start()
end

function Dialog2b(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That works. Finally, will you follow the rule of not depositing in your account any poison plants, live animals or dangerous potions?")
	Dialog.AddVoiceover("voiceover/english/banker_deephathom/qey_village05/banker_deephathom004.mp3", 1349974634, 2262781770)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Hmmm... okay, I agree.","Dialog2c")
	Dialog.AddOption("Ugh, well that takes all the fun out of it.  Fine.","Dialog2c")
	Dialog.AddOption("Yes... is that really a question?","Dialog2c")
	Dialog.Start()
end

function Dialog2c(NPC, Spawn)
if HasQuest(Spawn,5761) and GetQuestStep(Spawn,5761)==4 then
    SetStepComplete(Spawn, 5761,4)
end
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Excellent! Your account is open, and a spot is reserved for you in the vaults. Please visit us anytime with your banking needs. Do you need anything else?")
	Dialog.AddVoiceover("voiceover/english/banker_deephathom/qey_village05/banker_deephathom005.mp3", 1554235105, 516416947)
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddOption("Not right now.")
	Dialog.AddOption("Yes, do you offer lines of credit?","Dialog1")
	Dialog.Start()
end