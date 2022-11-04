--[[
	Script Name	: SpawnScripts/Baubbleshire/Drizzcopper.lua
	Script Purpose	: Drizzcopper <Banker>
	Script Author	: Dorbin
	Script Date	: 2022.10.30
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
if HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==4 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/banker_drizzcopper/qey_village06/100_banker_gnome_drizzcopper_housing_quest_1_53e2b5fb.mp3", "If you're opening a new account, I can help you over here.", "bye", 2700288666, 57326922, Spawn)
end
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11) <0 then
	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
elseif HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==4 then
Dialog2(NPC, Spawn)
else
Dialog1(NPC, Spawn)
end
end

function Dialog1(NPC, Spawn)
FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The answer to your question is no. I'm afraid we don't extend lines of credit at this time.")
    Dialog.AddVoiceover("voiceover/english/banker_drizzcopper/qey_village06/banker_drizzcopper001.mp3", 2748969711, 2912964073)
	PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddOption("Oh.  Thank you anyway.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I see the caretaker gave you my message. I'll help you open your account. First, I need some information from you. What's your name?")
	Dialog.AddVoiceover("voiceover/english/banker_drizzcopper/qey_village06/banker_drizzcopper002.mp3", 214257203, 180096028)
	Dialog.AddOption(""..GetName(Spawn).."","Dialog2a")
	Dialog.Start()
end

function Dialog2a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Occupation?")
	Dialog.AddVoiceover("voiceover/english/banker_drizzcopper/qey_village06/banker_drizzcopper003.mp3", 1581259590, 1356751138)
	Dialog.AddOption("Adventurer","Dialog2b")
	Dialog.AddOption("Crafter","Dialog2b")
    if GetRace(Spawn)==7 then
	Dialog.AddOption("Very hungry?","Dialog2b")
    elseif GetRace(Spawn)==5 then
	Dialog.AddOption("Tinkering Enthusiast?","Dialog2b")
    end
	Dialog.Start()
end

function Dialog2b(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That works. Finally, will you follow the rule of not depositing in your account any poison plants, live animals or dangerous potions?")
	Dialog.AddVoiceover("voiceover/english/banker_drizzcopper/qey_village06/banker_drizzcopper004.mp3", 819707609, 118168926)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Hmmm... okay, I agree.","Dialog2c")
	Dialog.AddOption("I guess so?","Dialog2c")
	Dialog.AddOption("Yes... is that really a question?","Dialog2c")
	Dialog.Start()
end

function Dialog2c(NPC, Spawn)
if HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==4 then
    SetStepComplete(Spawn, 5760,4)
end
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Excellent! Your account is open, and a spot is reserved for you in the vaults. Please visit us anytime with your banking needs. Do you need anything else?")
	Dialog.AddVoiceover("voiceover/english/banker_drizzcopper/qey_village06/banker_drizzcopper005.mp3", 1903748694, 1697244413)
	PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
	Dialog.AddOption("Not right now.")
	Dialog.AddOption("Yes, do you offer lines of credit?","Dialog1")
	Dialog.Start()
end