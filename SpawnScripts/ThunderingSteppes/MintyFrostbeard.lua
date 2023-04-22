--[[
    Script Name    : SpawnScripts/ThunderingSteppes/MintyFrostbeard.lua
    Script Author  : Premierio015
    Script Date    : 2023.04.22 12:04:20
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"
require "SpawnScripts/Generic/PlayerHistory"
local TheseBootsWereMadeFor = 5805 -- These Boots Were Made For QUEST ID

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn, TheseBootsWereMadeFor) == 14 then
Dialog1(NPC, Spawn)
elseif GetQuestStep(Spawn, TheseBootsWereMadeFor) == 15 then
    local time = GetPlayerHistory(Spawn, HISTORY.ANTONICA_BOOTS_HERITAGE_QUEST_WAIT) + 4500
     if os.time() < time then
     PlayFlavor(NPC, "voiceover/english/minty_frostbeard/steppes/quest/quest_minty_frostbeard_notready_d303af9a.mp3", "Ah, the boots aren't ready yet. They'll be ready tomorrow.", "", 2149540092, 2730738076, Spawn)
  elseif os.time() > time then
      Dialog4(NPC, Spawn)
     end
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What? And who might you be?")
	Dialog.AddVoiceover("voiceover/english/minty_frostbeard/steppes/minty_frostbeard001.mp3", 194470125, 2532852862)
	Dialog.AddOption("My name is " .. GetName(Spawn) .. ". Hwal sent me to fetch his new pair of boots.", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Did you bring the materials I need?  I can't very well make a pair of boots without the right leather and steel, can I?")
	Dialog.AddVoiceover("voiceover/english/minty_frostbeard/steppes/minty_frostbeard002.mp3", 3152977320, 1334538504)
	Dialog.AddOption("Yes, I brought the leather and steel you specified.", "Dialog3")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
    SetStepComplete(Spawn, TheseBootsWereMadeFor, 14)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well then, that's wonderful!  Why don't you come back tomorrow at about this time, and I'll have the boots ready.")
	Dialog.AddVoiceover("voiceover/english/minty_frostbeard/steppes/minty_frostbeard003.mp3", 4260781582, 3373743779)
	Dialog.AddOption("Very well. Thanks Minty.")
	Dialog.Start()
end


function Dialog4(NPC, Spawn)
    SetStepComplete(Spawn, TheseBootsWereMadeFor, 15)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
     Dialog.AddDialog("Thanks for waiting, dear!  Here's the boots for Hwal. Give him my regards!")
	Dialog.AddVoiceover("voiceover/english/minty_frostbeard/steppes/minty_frostbeard004.mp3", 674353442, 1806474731)
	Dialog.AddOption("Thanks Minty!")
	Dialog.Start()
end


function respawn(NPC)
	spawn(NPC)
end