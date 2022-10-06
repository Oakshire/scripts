--[[
	Script Name	: SpawnScripts/Starcrest/Grekin.lua
	Script Purpose	: Grekin <Bowyer>
	Script Author	: Dorbin
	Script Date	: 2022.02.24
	Script Notes	:  
--]]
require "SpawnScripts/Generic/DialogModule"


local Req931 = 5489
local Req378 = 5488
local Deposit = 5490

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
    ProvidesQuest(NPC, Deposit)
end

function InRange(NPC, Spawn) --Quest Callout
if GetFactionAmount(Spawn,11)<0 then
	PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
else
    if not HasCompletedQuest(Spawn, Deposit)then
if math.random(1, 100) <= 80 then
        choice = math.random(1,3)
        FaceTarget(NPC, Spawn)
        if choice ==1 then
        PlayFlavor(NPC, "voiceover/english/merchant_grekin/qey_village02/100_human_merchant_m_01_multhail1_78077dd5.mp3", "Sorry friend. I don't think you can help me.", "no", 3289788151, 1391553241, Spawn)
    	elseif choice ==2 then
        PlayFlavor(NPC, "voiceover/english/merchant_grekin/qey_village02/100_human_merchant_m_01_callout_9b7d7d4.mp3", "To close the store or deliever the deposit. That is the question. If only I didn't have to choose! Perhaps you can help me traveler?", "ponder", 1399992844, 4031649272, Spawn)
    	elseif choice ==3 then
        PlayFlavor(NPC, "voiceover/english/merchant_grekin/qey_village02/100_human_merchant_m_01_callout_9b7d7d4.mp3", "To close the store or deliever the deposit. That is the question. If only I didn't have to choose! Perhaps you can help me traveler?", "ponder", 1399992844, 4031649272, Spawn)
        end
    end
end
end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
else
Dialog1(NPC, Spawn)
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "beckon", 0, 0, Spawn)
	Dialog.AddDialog("Come close. Come close! See what I have to offer today.")
	Dialog.AddVoiceover("voiceover/english/merchant_grekin/qey_village02/merchantgrekin.mp3", 2492969401, 3280493975)
    if not HasQuest(Spawn, Deposit) and not HasCompletedQuest(Spawn, Deposit) then       
	Dialog.AddOption("You seem to be rather busy.  I'm looking for work if you need help.","DepositStart")
    end
    if GetQuestStep(Spawn, Deposit)==2 then     
	Dialog.AddOption("I have delivered your deposit to the Qeynos Exchange.","DepositDone")
    end
    if GetQuestStep(Spawn, Req931)==3 or GetQuestStep(Spawn, Req378)==2  then
  	Dialog.AddOption("I have completed a requisition order for you.","ReqDone")
    end
    Dialog.AddOption("I'm just browsing. Thank you.")
	Dialog.Start()
end

function DepositStart(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("If it's coin you need I can help out, but you'll have to do a favor for me. I need my daily proceeds delivered to the bank.")
	Dialog.AddVoiceover("voiceover/english/merchant_grekin/qey_village02/merchantgrekin000.mp3", 1743731083,2583786819)
	Dialog.AddOption("You would trust me with your money?", "Trust")
	Dialog.AddOption("On second thought, I shouldn't be handling someone else's large sums of coin.")
	Dialog.Start()
end

function Trust(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddDialog("For starters, it is only a day's proceeds. Also, there are three guards between the banks and us. I'm pretty sure you would be caught if you tried to run. Aside from all that, you have a friendly face and I think I can trust you. Take this box to the bank and return with the recipt.")
	Dialog.AddVoiceover("voiceover/english/merchant_grekin/qey_village02/merchantgrekin001.mp3", 2487079650,1001036096)
	Dialog.AddOption("Okay. I will be back shortly with the recipt.", "DepositBegin")
	Dialog.AddOption("I don't want to get tangled up in this.")
	Dialog.Start()
end

function DepositBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Deposit)
end

function DepositDone(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
    SetStepComplete(Spawn, Deposit, 2)
	Dialog.AddDialog("Excellent! I'm so busy here I don't have time for simple chores. I would have to close up shop, and I don't have time for that.")
	Dialog.AddVoiceover("voiceover/english/merchant_grekin/qey_village02/merchantgrekin002.mp3", 1911828027, 460668749)
	Dialog.AddOption("Glad I could help.")
	Dialog.Start()
end

function ReqDone(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "boggle", 0, 0, Spawn)
    if GetQuestStep(Spawn, Req931)==3 then
    SetStepComplete(Spawn, Req931, 3)
    end
    if GetQuestStep(Spawn, Req378)== 2  then
    SetStepComplete(Spawn, Req378, 2)
    end   
	Dialog.AddDialog("My requisition! I've waited for this for far too long. You would think a local requisition could be fulfilled much quicker. Take your fee and be off.")
	Dialog.AddVoiceover("voiceover/english/merchant_grekin/qey_village02/merchantgrekin003.mp3", 57347681,3755735620)
	Dialog.AddOption("Thanks.")
	Dialog.Start()
end


