--[[
    Script Name    : SpawnScripts/IsleRefuge1/Vertbridge.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.03 08:09:10
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local Fighter3 = 5735
local Priest3 = 5734
local Mage3 = 5736
local Scout3 = 5737

function spawn(NPC)
		SetRequiredQuest(NPC, Fighter3, 3, 1,1)
		SetRequiredQuest(NPC, Priest3, 3, 1,1)
		SetRequiredQuest(NPC, Mage3, 3, 1,1)
		SetRequiredQuest(NPC, Scout3, 3, 1,1)
	SetPlayerProximityFunction(NPC, 11, "InRange", "LeaveRange")
end

function InRange(NPC,Spawn)
if GetQuestStep(Spawn, Fighter3)==3 or GetQuestStep(Spawn, Priest3)==3 or GetQuestStep(Spawn, Mage3)==3 or GetQuestStep(Spawn, Scout3)==3 then
 hailed(NPC, Spawn)
 end
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'bank' then
    hailed2(NPC, Spawn)
    end
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah, so you've found my little bank.  If you are tired of carrying around any possessions, please feel free to deposit them into your account.")
	Dialog.AddVoiceover("voiceover/english/banker_vertbridge/tutorial_island02/bankervertbridge001.mp3", 677968905, 2264651259)
	PlayFlavor(NPC, "", "", "hello", 0,0, Spawn)
	Dialog.AddOption("Thank you.")
	Dialog.Start()

if GetQuestStep(Spawn, Fighter3)==3 then
    SetStepComplete(Spawn,Fighter3,3)
elseif GetQuestStep(Spawn, Priest3)==3 then
    SetStepComplete(Spawn,Priest3,3)
elseif GetQuestStep(Spawn, Mage3)==3 then
    SetStepComplete(Spawn,Mage3,3)
elseif GetQuestStep(Spawn, Scout3)==3 then
    SetStepComplete(Spawn,Scout3,3)
end
end

function hailed2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah, so you've found my little bank.  If you are tired of carrying around any possessions, please feel free to deposit them into your account.")
	Dialog.AddVoiceover("voiceover/english/banker_vertbridge/tutorial_island02/bankervertbridge001.mp3", 677968905, 2264651259)
	PlayFlavor(NPC, "", "", "hello", 0,0, Spawn)
	Dialog.AddOption("I'm just picking up some footware that were left for me.  Thanks.")
	Dialog.AddOption("Thank you.")
	Dialog.Start()
    
	
if GetQuestStep(Spawn, Fighter3)==3 then
    SetStepComplete(Spawn,Fighter3,3)
elseif GetQuestStep(Spawn, Priest3)==3 then
    SetStepComplete(Spawn,Priest3,3)
elseif GetQuestStep(Spawn, Mage3)==3 then
    SetStepComplete(Spawn,Mage3,3)
elseif GetQuestStep(Spawn, Scout3)==3 then
    SetStepComplete(Spawn,Scout3,3)
end
end


function respawn(NPC)
	spawn(NPC)
end