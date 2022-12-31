--[[
    Script Name    : SpawnScripts/BrawlersDojo/athirdcircleinitiate.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.18 02:12:18
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
    AddTimer(NPC, math.random(2000,5000), "EmoteLoop")
end

function hailed(NPC, Spawn)
    if HasQuest(Spawn,5790) and GetQuestStep(Spawn,5790)>=1 and GetQuestStep(Spawn,5790)<=4 and not QuestStepIsComplete(Spawn,5790,1) then
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("If your brain were half as good as your brawn, you'd be a quarter the warrior I am!")
	Dialog.AddVoiceover("voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_ogre_gm_85d4dfd9.mp3",3300429686, 1230722065)
    PlayFlavor(NPC, "", "", "flex",0,0 , Spawn, 0)
	Dialog.AddOption("Is that so? Spar with me!","Dialog1")
	Dialog.Start()
    end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn, 0)
    AddTimer(NPC,3000,"attack",1,Spawn)
end

function attack(NPC,Spawn)
    SpawnSet(NPC,"attackable",1)
    SpawnSet(NPC,"show_level",1)
    Attack(NPC,Spawn)
	PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_2_aggro_gm_d2336620.mp3", "Your overconfidence will be your undoing.", "", 549554872, 2137888085, Spawn, 0)
end

function aggro(NPC,Spawn)
end

function healthchanged(NPC, Spawn)  
    if GetHP(NPC) < GetMaxHP(NPC) * 0.26  then
    SpawnSet(NPC,"attackable",0)
    SpawnSet(NPC,"show_level",0)    
--   if IsInCombat(NPC,Spawn) then
        ClearHate(NPC, Spawn)
        SetInCombat(Spawn, false)
        SetInCombat(NPC, false)
        ClearEncounter(NPC)
        SetTarget(Spawn,nil)
--    end
    AddTimer(NPC,1500,"end2",1,Spawn)
    AddTimer(NPC,3000,"bow",1,Spawn)
    AddTimer(NPC,5000,"bow2",1,Spawn)
end
end

function end2(NPC,Spawn)
        ClearHate(NPC, Spawn)
        SetInCombat(Spawn, false)
        SetInCombat(NPC, false)
        ClearEncounter(NPC)
        SetTarget(Spawn,nil)
end   

function bow(NPC,Spawn)
	PlayFlavor(NPC, "", "", "bow", 0, 0, Spawn, 0)
    SetStepComplete(Spawn,5790,1)
end    

function bow2(NPC,Spawn)
    Runback(NPC)
end 

function respawn(NPC)
	spawn(NPC)
	PlayFlavor(NPC, "", "", "confused", 0, 0, Spawn, 0)
end

function death(NPC,Spawn)
    Despawn(NPC)
end
