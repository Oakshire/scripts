--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/StewardTredo.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.19 12:10:07
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local QUEST_1 = 232

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 14, "InRange", "LeaveRange")
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC,Spawn)
if GetFactionAmount(Spawn,11)>0 then
	if not HasCompletedQuest(Spawn, QUEST_1) and not HasQuest(Spawn, QUEST_1) then
    	PlayFlavor(NPC, "voiceover/english/optional5/steward_tredo/st_aoi_edit_64.mp3", "Oh no! Poacher! Poacher! I can tell! I can tell!", "point", 3082625326, 519116783, Spawn, 0)
    end
end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
if GetFactionAmount(Spawn,11)>0 then
    Dialog1(NPC, Spawn)
    else
    PlayFlavor(NPC,"","","shakefist",0,0,Spawn)
end
end

---------------------------------------------------------------------------------------------------------------
--						QUEST 1
---------------------------------------------------------------------------------------------------------------
function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Not a poacher, I see. Thank the misty winds! Sorry for thinking otherwise. With all the babble of poachers lurking Oakmyst, I thought for sure your strange face would be the last sight I'd see!")
	Dialog.AddVoiceover("voiceover/english/optional1/steward_tredo/qey_adv01_oakmyst/stewardtredo000.mp3", 2443855119, 308651193)
    PlayFlavor(NPC,"","","sigh",0,0,Spawn)
	if not HasCompletedQuest(Spawn, QUEST_1) and not HasQuest(Spawn, QUEST_1) then
	Dialog.AddOption("Poachers? What can I do to help?", "OfferQuest1")
    end
    Dialog.AddOption("I wish you luck in avoiding poachers. Farewell.")
	Dialog.Start()
end



function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end
