--[[
    Script Name    : SpawnScripts/Antonica/SoldierSelennia.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.07 07:10:07
    Script Purpose : 
                   : 
--]]


require "SpawnScripts/Generic/DialogModule"
local Quest2 = 5773

function spawn(NPC)
    SpawnSet(NPC,"action_state",11769)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Listen ... I only have a few minutes left.  Tell the commander ... the gnolls came from behind ... they took all of us out ... Arthur ... Garrin ... Dalathani ... the Greenleaf triplets.  And even little Skimpy!  Those fiends! They even killed Skimpy! I've lost too much ... blood. Tell him ... what happened.")
	Dialog.AddVoiceover("voiceover/english/optional1/soldier_selennia/antonica/soldierselennia000.mp3", 2094795288, 2230809684)
    if not HasQuest(Spawn,Quest2)then
	Dialog.AddOption("Ok.")
	elseif GetQuestStep(Spawn,Quest2)>=3 and GetQuestStep(Spawn,Quest2)<=5 then
	Dialog.AddOption("Little Skimpy has not perished in vain.  Hang in there; I can heal your wounds. *Summon all your belief and pray to the gods to heal this woman*","Dialog2")
    end	    
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC,Spawn)
    SetStepComplete(NPC,Quest2,4)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("My wounds!  They're ... they're ... gone! You healed me! Praise the gods! But now ... now I need to return to Qeynos to give the commander the bad news. I thank you for your ... well, your divine interevention.")
	Dialog.AddVoiceover("voiceover/english/optional1/soldier_selennia/antonica/soldierselennia001.mp3", 2094795288, 2230809684)
	Dialog.AddOption("Just remember to say a little prayer to the gods for your fallen comrades.","Goodbye")
	Dialog.Start()
    SpawnSet(NPC,"action_state",0)
    ApplySpellVisual(NPC,23)
    CastSpell(Spawn,52)
end

function Goodbye(NPC,Spawn)
    FaceTarget(NPC,Spawn)
    PlayFlavor(NPC,"","","thanks",0,0)
    SetStepComplete(Spawn,Quest2,4)    
    AddTimer(NPC,6000,"Despawning")
    end
    
function Despawning(NPC,Spawn)
    Despawn(NPC)
end

--