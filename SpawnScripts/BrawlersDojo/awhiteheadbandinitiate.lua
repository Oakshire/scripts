--[[
    Script Name    : SpawnScripts/BrawlersDojo/awhiteheadbandinitiate.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.17 08:12:25
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
    AddTimer(NPC, math.random(2000,5000), "EmoteLoop")
    SetTempVariable(NPC,"Talking","false")
end

function hailed(NPC, Spawn)
    if HasQuest(Spawn,5790) and GetQuestStep(Spawn,5790)>=1 and GetQuestStep(Spawn,5790)<=4 and not QuestStepIsComplete(Spawn,5790,4) then
    SpawnSet(NPC,"mood_state",0)
    SpawnSet(NPC,"visual_state",0)
    PlayAnimation(NPC,10871)
    SetTempVariable(NPC,"Talking","true")
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Tread softly and speak your purpose.")
	Dialog.AddVoiceover("voiceover/english/optional1/initiate_tara/qey_elddar/100_monk_initiate_tara_token1_9ac42d88.mp3",3516598133, 1750026138)
    PlayFlavor(NPC, "", "", "",0,0 , Spawn, 0)
	Dialog.AddOption("I'm looking to prove myself. Will you spar with me?","Dialog1")
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
end

function aggro(NPC,Spawn)
end

function healthchanged(NPC, Spawn)  
    if GetHP(NPC) < GetMaxHP(NPC) * 0.26  then
    SpawnSet(NPC,"attackable",0)
    SpawnSet(NPC,"show_level",0)    
        ClearHate(NPC, Spawn)
        SetInCombat(Spawn, false)
        SetInCombat(NPC, false)
        ClearEncounter(NPC)
        SetTarget(Spawn,nil)
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
    SetStepComplete(Spawn,5790,4)
	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gf_c865a827.mp3", "Duty above all else, citizen, except honor!","bow",373851625, 467562033)
end

function bow2(NPC,Spawn)
    Runback(NPC)
    SetTempVariable(NPC,"Talking","false")
    SpawnSet(NPC,"visual_state",11420)
    local zone = GetZone(NPC)
    local dummy = GetSpawnByLocationID(zone,133781308)
    FaceTarget(NPC,dummy)
end 


function respawn(NPC)
	spawn(NPC)
end

function EmoteLoop(NPC)
 if GetTempVariable(NPC,"Talking")== "false"then
    SpawnSet(NPC, "action_state", 0)
    local choice = MakeRandomInt(1,8)
    local zone = GetZone(NPC)
    local dummy = GetSpawnByLocationID(zone,133781308)
        if choice == 1 then
            PlayAnimation(NPC, 1644)
      SpawnSet(dummy, "visual_state", 2083)
          AddTimer(NPC, 2550, "Idle")
        elseif choice == 2 then
            PlayAnimation(NPC, 1646)
      SpawnSet(dummy, "visual_state", 2083)
          AddTimer(NPC, 3100, "Idle")
        elseif choice == 3 then
            PlayAnimation(NPC, 1284)
      SpawnSet(dummy, "visual_state", 2083)
          AddTimer(NPC, 3050, "Idle")
        elseif choice == 4 then
            PlayAnimation(NPC, 3021)
    SpawnSet(dummy, "visual_state", 2083)
            AddTimer(NPC, 3100, "Idle")
        elseif choice == 5 then
            PlayAnimation(NPC, 1201)
    SpawnSet(dummy, "visual_state", 2083)
            AddTimer(NPC, 2450, "Idle")
        elseif choice == 6 then
            PlayAnimation(NPC, 1181)
    SpawnSet(dummy, "visual_state", 2083)
            AddTimer(NPC, 2550, "Idle")
        elseif choice == 7 then
            PlayAnimation(NPC, 4506)
    SpawnSet(dummy, "visual_state", 2083)
            AddTimer(NPC, 4400, "Idle")
        else
            PlayAnimation(NPC, 3037)
    SpawnSet(dummy, "visual_state", 2083)
            AddTimer(NPC, 3300, "Idle")
        end
    else
    local timer = MakeRandomInt(1500,2500)
    AddTimer(NPC, timer, "EmoteLoop")   
    end
end

function Idle(NPC)
    local zone = GetZone(NPC)
    local dummy = GetSpawnByLocationID(zone,133781308)
     if GetTempVariable(NPC,"Talking")== "false"then
    PlayAnimation(NPC, 372) 
    SpawnSet(dummy, "visual_state", 2083)
end
    AddTimer(NPC,1000,"resetdummy",1)
    local timer = MakeRandomInt(500,2500)
    AddTimer(NPC, timer, "EmoteLoop")
end

function resetdummy(NPC)
    local zone = GetZone(NPC)
    local dummy = GetSpawnByLocationID(zone,133781308)
    SpawnSet(dummy, "visual_state", 0)
end
   