--[[
	Script Name	: SpawnScripts/Graystone/Dori.lua
	Script Purpose	: Dori <Banker>
	Script Author	: Dorbin
	Script Date	: 2022.03.11
	Script Notes	:
--]]
require "SpawnScripts/Generic/DialogModule"


local Tally = 5508

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")		
ProvidesQuest(NPC,Tally)
end

function InRange(NPC, Spawn)
if HasQuest(Spawn,5764) and GetQuestStep(Spawn,5764)==4 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/banker_dori/qey_village03/100_banker_dwarf_dori_housing_quest_1_53e2b5fb.mp3", "If you're opening a new account, I can help you over here.", "bye", 1929454221, 2462501876, Spawn)
end
end


function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11) <0 then
	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
elseif HasQuest(Spawn,5764) and GetQuestStep(Spawn,5764)==4 then
Dialog2(NPC, Spawn)
else
MainDialog(NPC, Spawn)
end
end

function MainDialog(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetin's, young'n. My name's Dori and this here is my bank. As a customer of the Qeynos Exchange, you can be certain your money's safe with us!")
	Dialog.AddVoiceover("voiceover/english/banker_dori/qey_village03/bankerdori.mp3", 2952818839, 2577303477)
	PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
	if not HasCompletedQuest (Spawn, Tally) and not HasQuest (Spawn, Tally) and GetLevel(Spawn)>=7 then     
    Dialog.AddOption("You look pretty busy, is there anything I can help out with?", "DeliveryStart")
    end
    if GetQuestStep(Spawn,Tally)==2 then     
    Dialog.AddOption("The banker sent me back with this sealed note for you.", "DeliveryDone")
    end
    Dialog.AddOption("Thanks Dori.")
	Dialog.Start()
end


 function DeliveryStart(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Sure ya can. Its nothing much, but if you take my daily tally into the Qeynos Exchange at the harbor, it would save me a trip into the city! You think you're up to it?")
	Dialog.AddVoiceover("voiceover/english/banker_dori/qey_village03/bankerdori000.mp3", 3527195543,3811393839)
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("Of course! I'll drop it by as soon as possible.", "QuestBegin")
    Dialog.AddOption("Another time. Sorry.")
    Dialog.Start()
end   


function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Tally)
end

 function DeliveryDone(NPC, Spawn)
    SetStepComplete(Spawn, Tally, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh dear. I hope its not a bank audit! I do hate those tedious things! Poor Jalan will never get to leave if its an audit! No time for chatt'n. Its time to buckle down and get to work. At any rate, thanks for all your help.")
	Dialog.AddVoiceover("voiceover/english/banker_dori/qey_village03/bankerdori002.mp3", 2001766624,322751976)
	PlayFlavor(NPC, "", "", "doh", 0, 0, Spawn)
    Dialog.AddOption("I only wish I could have brought back better news. ")
    Dialog.Start()
end 

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I see the caretaker gave you my message. I'll help you open your account. First, I need some information from you. What's your name?")
	Dialog.AddVoiceover("voiceover/english/banker_dori/qey_village03/bankerdori003.mp3", 731366027,1183378874)
	Dialog.AddOption(""..GetName(Spawn).."","Dialog2a")
	Dialog.Start()
end

function Dialog2a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Occupation?")
	Dialog.AddVoiceover("voiceover/english/banker_dori/qey_village03/bankerdori004.mp3", 2681845326,423161298)
	Dialog.AddOption("Adventurer","Dialog2b")
	Dialog.AddOption("Crafter","Dialog2b")
    if GetRace(Spawn)==0 then
	Dialog.AddOption("Tarven brawling counts if you win, right?","Dialog2b")
    elseif GetRace(Spawn)==2 then
	Dialog.AddOption("Collector. Shiny rocks in particular.","Dialog2b")
    end
	Dialog.Start()
end

function Dialog2b(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That works. Finally, will you follow the rule of not depositing in your account any poison plants, live animals or dangerous potions?")
	Dialog.AddVoiceover("voiceover/english/banker_dori/qey_village03/bankerdori005.mp3", 371751012,3783954000)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Hmmm... okay, I agree.","Dialog2c")
	Dialog.AddOption("I guess so?","Dialog2c")
	Dialog.AddOption("Yes... is that really a question?","Dialog2c")
	Dialog.Start()
end

function Dialog2c(NPC, Spawn)
if HasQuest(Spawn,5764) and GetQuestStep(Spawn,5764)==4 then
    SetStepComplete(Spawn, 5764,4)
end
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Excellent! Your account is open, and a spot is reserved for you in the vaults. Please visit us anytime with your banking needs. Do you need anything else?")
	Dialog.AddVoiceover("voiceover/english/banker_dori/qey_village03/bankerdori006.mp3", 1127160953,942233474)
	PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
	Dialog.AddOption("Not right now.")
	Dialog.Start()
end