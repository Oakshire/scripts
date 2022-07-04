--[[
	Script Name	: SpawnScripts/Starcrest/ElliasenkaCroosinaden.lua
	Script Purpose	: Elliasenka Croosinaden 
	Script Author	: Dorbin
	Script Date	: 07.03.2022
	Script Notes	: 
--]]


require "SpawnScripts/Generic/DialogModule"
local HailCheck = false

function spawn(NPC)
AddTimer(NPC, 5000, "EmoteLoop")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
HailCheck = true
Dialog1(NPC, Spawn)    
AddTimer(NPC,26000,"HailReset")
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
	Dialog.AddDialog("Unless you possess the knowledge we seek and will help us, I suggest you leave us with this human. Now, go, leave us to our business!")
	Dialog.AddVoiceover("voiceover/english/elliasenka_croosinaden/qey_village02/elliasenkacroosinaden000.mp3", 4184348378, 3631028960)
    if GetQuestStep (Spawn, 5603)==1 then 
	Dialog.AddOption("I've actually got a note here from Armsdealer Barrik.  The dagger you ordered is ready to be picked up.","Delivered")
    end
	Dialog.AddOption("You seem to be busy.  I'll find someone else to talk to.  ")
	Dialog.Start()
end

function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    SetStepComplete(Spawn, 5603, 1)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddDialog("Ahh.  It appears my dagger is ready.  Did you hear that Zentomaron?")
	Dialog.AddVoiceover("voiceover/english/elliasenka_croosinaden/qey_village02/elliasenkacroosinaden001.mp3", 362437188, 601086800)
	Dialog.AddOption("... I'll let Barrik know you'll be picking it up soon.")
	Dialog.Start()
end

function HailReset(NPC)
    HailCheck = false
end

function EmoteLoop(NPC)
    if HailCheck == true then
    AddTimer(NPC,26100,"EmoteLoop")
    else
    local emoteChoice = MakeRandomInt(1,6)

    if emoteChoice == 1 then
-- shame
        PlayAnimation(NPC, 12216)
        AddTimer(NPC, MakeRandomInt(11000,12000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- point
        PlayAnimation(NPC, 12028)
        AddTimer(NPC, MakeRandomInt(6000,8000), "EmoteLoop")	
    
    elseif emoteChoice == 3 then
-- ponder
        PlayAnimation(NPC, 12030)
        AddTimer(NPC, MakeRandomInt(12000,14000), "EmoteLoop")	
    elseif emoteChoice == 4 then
-- shakefist
        PlayAnimation(NPC, 12214)
        AddTimer(NPC, MakeRandomInt(12000,13500), "EmoteLoop")
    elseif emoteChoice == 5 then
-- tapfoot
        PlayAnimation(NPC, 13056)
        AddTimer(NPC, MakeRandomInt(12000,13500), "EmoteLoop")	
    elseif emoteChoice == 6 then
-- no
        PlayAnimation(NPC, 11881)
        AddTimer(NPC, MakeRandomInt(5000,6000), "EmoteLoop")	
       end
end
end
