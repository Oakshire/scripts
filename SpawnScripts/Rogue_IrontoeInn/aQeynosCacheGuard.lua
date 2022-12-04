--[[
    Script Name    : SpawnScripts/Rogue_IrontoeInn/aQeynosCacheGuard.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.03 05:12:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
waypoints(NPC)
	SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
	SetTempVariable(NPC, "OnGuard", "true")    
end

function InRange(NPC,Spawn)
    if GetTempVariable(NPC,"OnGuard")=="true" and not IsInCombat(NPC) and GetY(Spawn) <=0 then
    FaceTarget(NPC,Spawn)
	SetTempVariable(NPC, "OnGuard", "false")    
    AddTimer(NPC,2500,"Checking",1,Spawn)
    AddTimer(NPC,6000,"Checking",1,Spawn)
    AddTimer(NPC,8000,"Checking",1,Spawn)
    AddTimer(NPC,10000,"ResetGuard",1,Spawn)
    AddTimer(NPC,9000,"ResetGuardEmote",1,Spawn)
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

function LeaveRange(NPC,Spawn)
    if GetTempVariable(NPC,"OnGuard")=="false" then
	SetTempVariable(NPC, "OnGuard", "true")
	end
end

function Checking(NPC,Spawn)
    if GetDistance(NPC,Spawn) <=8 and HasMoved(Spawn) then
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
    if GetTempVariable(NPC,"OnGuard")=="false" then
	SetTempVariable(NPC, "OnGuard", "true")
	end
end    

function waypoints(NPC)
zone = GetZone(NPC)
    if GetSpawnLocationID(NPC)==133780970 then
	MovementLoopAddLocation(NPC, -4.92, -0.27, 10.28, 2, 0)
	MovementLoopAddLocation(NPC, -4.92, -0.27, 10.28, 2, 0)
	MovementLoopAddLocation(NPC, -4.92, -0.27, 10.28, 2, 12)
	MovementLoopAddLocation(NPC, -4.92, -0.27, 10.28, 2, 0)
	MovementLoopAddLocation(NPC, -4, -0.27, 8.64, 2, 0)
	MovementLoopAddLocation(NPC, -2.29, -0.27, 6.19, 2, 0)
	MovementLoopAddLocation(NPC, -1.76, -0.27, 5.77, 2, 12,"Face")
	MovementLoopAddLocation(NPC, -1.71, -0.27, 6.49, 2, 0)
	MovementLoopAddLocation(NPC, -4.5, -0.27, 8.27, 2, 0)
    elseif GetSpawnLocationID(NPC)==133780971 then
	MovementLoopAddLocation(NPC, -19.05, -0.27, 12.9, 2, 6)
	MovementLoopAddLocation(NPC, -19.05, -0.27, 12.9, 2, 0)
	MovementLoopAddLocation(NPC, -17.23, -0.27, 11.87, 2, 0)
	MovementLoopAddLocation(NPC, -14.8, -0.27, 9.62, 2, 0)
	MovementLoopAddLocation(NPC, -11.96, -0.27, 8.71, 2, 0)
	MovementLoopAddLocation(NPC, -11.18, -0.27, 7.79, 2, 0)
	MovementLoopAddLocation(NPC, -11.8, -0.27, 5.27, 2, 14)
	MovementLoopAddLocation(NPC, -11.8, -0.27, 5.27, 2, 0)
	MovementLoopAddLocation(NPC, -11.27, -0.27, 6.33, 2, 0)
	MovementLoopAddLocation(NPC, -13.57, -0.27, 9.62, 2, 0)
	MovementLoopAddLocation(NPC, -16.26, -0.27, 7.38, 2, 14)
	MovementLoopAddLocation(NPC, -16.26, -0.27, 7.38, 2, 0)
	MovementLoopAddLocation(NPC, -14.76, -0.27, 8.47, 2, 0)
	MovementLoopAddLocation(NPC, -15.43, -0.27, 10.07, 2, 0)
	MovementLoopAddLocation(NPC, -17.19, -0.27, 11.68, 2, 0)
    elseif GetSpawnLocationID(NPC)==133780972 then
	MovementLoopAddLocation(NPC, -28.18, -0.27, 3.56, 2, 10)
	MovementLoopAddLocation(NPC, -28.18, -0.27, 3.56, 2, 0)
	MovementLoopAddLocation(NPC, -25.8, -0.27, 0.91, 2, 0)
	MovementLoopAddLocation(NPC, -23.95, -0.27, -1.04, 2, 0)
	MovementLoopAddLocation(NPC, -23.05, -0.27, -2.91, 2, 2)
	MovementLoopAddLocation(NPC, -23.05, -0.27, -2.91, 2, 0)
	MovementLoopAddLocation(NPC, -19.03, -0.27, -0.99, 2, 0)
	MovementLoopAddLocation(NPC, -17.47, -0.27, 1.89, 2, 0)
	MovementLoopAddLocation(NPC, -21.66, -0.27, 6.59, 2, 0)
	MovementLoopAddLocation(NPC, -23.87, -0.27, 8.39, 2, 12)
	MovementLoopAddLocation(NPC, -23.87, -0.27, 8.39, 2, 0)
	MovementLoopAddLocation(NPC, -20.83, -0.27, 5.5, 2, 0)
	MovementLoopAddLocation(NPC, -20.55, -0.27, 4.26, 2, 0)
	MovementLoopAddLocation(NPC, -24.97, -0.27, 0.2, 2, 0)
	MovementLoopAddLocation(NPC, -26.55, -0.27, 1.61, 2, 0)
	end
end

function Face(NPC)
    SetHeading(NPC, 230)
end

function aggro(NPC,Spawn)
    if GetGender(NPC)==1 then
    choice = MakeRandomInt(1,3)
    if choice ==1 then
	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_48350e59.mp3", "You're not allowed in here!", "", 1734668326, 429140096, Spawn, 0)
    elseif choice ==2 then
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gm_7a80a6a8.mp3", "I thought I smelled something foul.", "", 4043801631, 2162078490, Spawn, 0)
    else
	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_kill_gm_2b7f45ad.mp3", "For the glory of Qeynos!", "", 1601992673, 279003315, Spawn)
    end
    else
    choice = MakeRandomInt(1,3)
    if choice ==1 then
    PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_7a80a6a8.mp3", "I thought I smelled something foul.", "", 4060680490, 1058882345, Spawn, 0)
    elseif choice ==2 then
	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gf_48350e59.mp3", "You're not allowed in here!", "", 3258959596, 3448333109, Spawn, 0)
    else
	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_kill_gf_2b7f45ad.mp3", "For the glory of Qeynos!", "", 2825851367, 3848266464, Spawn)
end
end
end


function respawn(NPC)
	spawn(NPC)
end