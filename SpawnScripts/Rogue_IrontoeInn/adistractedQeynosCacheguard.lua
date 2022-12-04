--[[
    Script Name    : SpawnScripts/Rogue_IrontoeInn/adistractedQeynosCacheguard.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.03 05:12:39
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 4, "InRange", "LeaveRange")
	SetTempVariable(NPC, "OnGuard", "true")    
	NPC_Y = GetY(NPC)
end

function InRange(NPC,Spawn)
    if GetTempVariable(NPC,"OnGuard")=="true" and not IsInCombat(NPC) and GetY(Spawn) >= 6 then
    FaceTarget(NPC,Spawn)
	SetTempVariable(NPC, "OnGuard", "false")    
    AddTimer(NPC,2500,"Checking",1,Spawn)
    AddTimer(NPC,6000,"Checking",1,Spawn)
    AddTimer(NPC,10000,"ResetGuard",1,Spawn)
    AddTimer(NPC,10000,"ResetGuardEmote",1,Spawn)
    choice = MakeRandomInt(1,3)
    if choice ==1 then
	PlayFlavor(NPC, "", "What was that?", "peer", 0, 0, Spawn, 0)
    elseif choice ==2 then
    PlayFlavor(NPC, "", "", "doubletake", 0, 0, Spawn, 0)
    SendMessage(Spawn,"The guard heard something.")
    elseif choice ==3 then
    PlayFlavor(NPC, "", "Hmm?", "stare", 0, 0, Spawn, 0)
    end
end
end

function Checking(NPC,Spawn)
    if GetDistance(NPC,Spawn) <=6 and HasMoved(Spawn) then
    Attack(NPC,Spawn)
    end
end


function ResetGuardEmote(NPC,Spawn)
    if not IsInCombat(NPC) then
    choice = MakeRandomInt(1,2)
    if choice ==1 then
	PlayFlavor(NPC, "", "", "confused", 0, 0, Spawn, 0)
    elseif choice ==2 then
    PlayFlavor(NPC, "", "", "shrug", 0, 0, Spawn, 0)
    end
end 
end

function ResetGuard(NPC,Spawn)
	SetTempVariable(NPC, "OnGuard", "true")    
end    

function aggro(NPC,Spawn)
    choice = MakeRandomInt(1,3)
    if choice ==1 then
    PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gm_48350e59.mp3", "You're not allowed in here!", "", 237358955, 1041617020, Spawn, 0)
    elseif choice ==2 then
	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gm_8236a789.mp3", "Remove yourself from my presence, outsider.", "", 3302310786, 2767017909, Spawn, 0)
    else
	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_kill_gf_2b7f45ad.mp3", "For the glory of Qeynos!", "", 2825851367, 3848266464, Spawn)
    end
end

function respawn(NPC)
	spawn(NPC)
end