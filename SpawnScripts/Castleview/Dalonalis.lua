--[[
	Script Name	: SpawnScripts/Castleview/Dalonalis.lua
	Script Purpose	: Dalonalis <Banker>
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")		
end

function respawn(NPC)
	spawn(NPC)
end


function InRange(NPC, Spawn)
if HasQuest(Spawn,5765) and GetQuestStep(Spawn,5765)==4 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/banker_dalonalis/qey_village04/100_banker_dalonalis_housing_quest_1_53e2b5fb.mp3", "If you're opening a new account, I can help you over here.", "bye", 626240462, 2916710020, Spawn)
end
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11) <0 then
	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
elseif HasQuest(Spawn,5765) and GetQuestStep(Spawn,5765)==4 then
Dialog2(NPC, Spawn)
else
Dialog1(NPC, Spawn)
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("If you're opening a new account, I can help you over here.")
	Dialog.AddVoiceover("voiceover/english/banker_dalonalis/qey_village04/100_banker_dalonalis_housing_quest_1_53e2b5fb.mp3", 626240462, 2916710020)
	PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
--	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..MakeRandomInt(1,3).."_1022.mp3", "", "hello", 0, 0, Spawn)
	Dialog.AddOption("I'm just working with my current account today.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I see the caretaker gave you my message. I'll help you open your account. First, I need some information from you. What's your name?")
	Dialog.AddVoiceover("voiceover/english/banker_dalonalis/qey_village04/banker_dalonalis002.mp3", 3048971647, 529382564)
	Dialog.AddOption(""..GetName(Spawn).."","Dialog2a")
	Dialog.Start()
end

function Dialog2a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Occupation?")
	Dialog.AddVoiceover("voiceover/english/banker_dalonalis/qey_village04/banker_dalonalis003.mp3", 84065886, 2587274709)
	Dialog.AddOption("Adventurer","Dialog2b")
	Dialog.AddOption("Crafter","Dialog2b")
    if GetRace(Spawn)==4 then
	Dialog.AddOption("Fly catcher doesn't seem right... Harvester?","Dialog2b")
    elseif GetRace(Spawn)==8 then
	Dialog.AddOption("How could I sum up living numerous lifetimes in one word?! Let's say Epicurean.","Dialog2b")
    end
	Dialog.Start()
end

function Dialog2b(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That works. Finally, will you follow the rule of not depositing in your account any poison plants, live animals or dangerous potions?")
	Dialog.AddVoiceover("voiceover/english/banker_dalonalis/qey_village04/banker_dalonalis004.mp3", 3855591766, 2694751634)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Hmmm... okay, I agree.","Dialog2c")
	Dialog.AddOption("You mean I can't keep my... fine.","Dialog2c")
	Dialog.AddOption("Yes... is that really a question?","Dialog2c")
	Dialog.Start()
end

function Dialog2c(NPC, Spawn)
if HasQuest(Spawn,5765) and GetQuestStep(Spawn,5765)==4 then
    SetStepComplete(Spawn, 5765,4)
end
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Excellent! Your account is open, and a spot is reserved for you in the vaults. Please visit us anytime with your banking needs. Do you need anything else?")
	Dialog.AddVoiceover("voiceover/english/banker_dalonalis/qey_village04/banker_dalonalis005.mp3", 575209074, 1502962042)
	PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
	Dialog.AddOption("Not right now.")
	Dialog.Start()
end