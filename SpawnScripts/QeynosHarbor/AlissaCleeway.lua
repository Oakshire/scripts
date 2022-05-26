--[[
	Script Name	: SpawnScripts/QeynosHarbor/AlissaCleeway.lua
	Script Purpose	: Alissa Cleeway <General Goods>
	Script Author	: Dorbin
	Script Date	: 2022.05.25
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"
local fishy = 5564

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
   if GetFactionAmount(Spawn,11) <0 then
    choice = math.random(1,2)
	FaceTarget(NPC, Spawn)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "glare", 1584866727, 581589457, Spawn)
        end
    else
    if math.random(1,100)<60 then
    choice = math.random(1,2)
	FaceTarget(NPC, Spawn)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "beckon", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "hello", 1584866727, 581589457, Spawn)
        end
        end
    end
end


function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
 if GetFactionAmount(Spawn,11) <0 then
    choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 1584866727, 581589457, Spawn)
        end
    else
    Dialog1(NPC, Spawn)
    end
end	

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
	Dialog.AddDialog("Browse the docks all you want, I guarantee you won't find better fish than mine.")
	Dialog.AddVoiceover("voiceover/english/merchant_alissa_cleeway/qey_harbor/alissacleeway000.mp3", 3954670515, 1312504794)
	if not QuestStepIsComplete(Spawn,fishy,1) and HasQuest(Spawn,fishy) then
	Dialog.AddOption("Galsway is looking for the best bargin on his next fish order.  Can you offer something he can't refuse?","FishQuestion")
    end
    Dialog.AddOption("I don't need your goods.")
	Dialog.Start()
end

function FishQuestion(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
	Dialog.AddDialog("Ah... Galsway is shopping for a better price, is he?  You tell him my prices are fair, and if he finds something better he's not getting fresh goods!")
	Dialog.AddVoiceover("voiceover/english/merchant_alissa_cleeway/qey_harbor/alissacleeway001.mp3", 1777937692, 1427691386)
	Dialog.AddOption("I'll let him know.  Thanks.","FishDone")
	Dialog.Start()
end

function FishDone(NPC,Spawn)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,fishy, 1)
end 

