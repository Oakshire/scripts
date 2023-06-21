--[[
    Script Name    : SpawnScripts/Antonica/ShadySwashbucklerXVII.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.11 04:06:02
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local Bard = 5855
local Brawler = 5845
local Cleric = 5848
local Crusader = 5846
local Druid = 5849
local Enchanter = 5851
local Predator = 5856
local Rogue = 5857
local Shaman = 5850
local Summoner = 5854
local Warrior = 5847

function spawn(NPC)
    SetInfoStructString(NPC, "action_state", "ponder")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if HasQuest(Spawn,5858)then
    SetStepComplete(Spawn,5858,2)
	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_d38d1fff.mp3", "Ah, what have we here?  Glad to see you endured the journey here adventurer.", "ponder", 2806352129, 3453714070, Spawn)
    elseif HasQuest(Spawn,Bard) or
    HasQuest(Spawn,Brawler) or
    HasQuest(Spawn,Cleric) or
    HasQuest(Spawn,Crusader) or
    HasQuest(Spawn,Druid) or
    HasQuest(Spawn,Enchanter) or
    HasQuest(Spawn,Predator) or
    HasQuest(Spawn,Rogue) or
    HasQuest(Spawn,Shaman) or
    HasQuest(Spawn,Summoner) or
    HasQuest(Spawn,Warrior)then
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("My apologies, friend. I did not see you there ... What is it you need?")
	Dialog.AddVoiceover("voiceover/english/scribe_duvo/qey_elddar/100_scribe_halfling_duvo_callout1_c6eaefe5.mp3", 3948051330, 1166584264)
    Dialog.AddOption("I hear you can get me some gear? Here are my papers","Gear")
    Dialog.AddOption("Good day to you!")	
	Dialog.Start()
else       
	PlayFlavor(NPC, "voiceover/english/scribe_duvo/qey_elddar/100_scribe_halfling_duvo_callout1_c6eaefe5.mp3", "My apologies, friend. I did not see you there ... What is it you need?", "", 3948051330, 1166584264, Spawn)
end
end


function Gear(NPC,Spawn)
    if HasQuest(Spawn,Bard) then
         SetStepComplete(Spawn,Bard,1)
    end
    if HasQuest(Spawn,Brawler) then
         SetStepComplete(Spawn,Brawler,1)
    end
    if HasQuest(Spawn,Cleric) then
         SetStepComplete(Spawn,Cleric,1)
    end
    if HasQuest(Spawn,Crusader) then
         SetStepComplete(Spawn,Crusader,1)
    end
    if HasQuest(Spawn,Druid) then
         SetStepComplete(Spawn,Druid,1)
    end
    if HasQuest(Spawn,Enchanter) then
         SetStepComplete(Spawn,Enchanter,1)
    end
    if HasQuest(Spawn,Predator) then
         SetStepComplete(Spawn,Predator,1)
    end
    if HasQuest(Spawn,Rogue) then
         SetStepComplete(Spawn,Rogue,1)
    end
    if HasQuest(Spawn,Shaman) then
         SetStepComplete(Spawn,Shaman,1)
    end
    if HasQuest(Spawn,Summoner) then
         SetStepComplete(Spawn,Summoner,1)
    end
    if HasQuest(Spawn,Warrior) then
         SetStepComplete(Spawn,Warrior,1)
    end
end

function respawn(NPC)
	spawn(NPC)
end