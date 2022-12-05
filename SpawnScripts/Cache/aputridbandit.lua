--[[
    Script Name    : SpawnScripts/Cache/aputridbandit.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.05 04:12:24
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	waypoints(NPC)
	SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
	SetTempVariable(NPC, "OnGuard", "true")  
end

function InRange(NPC,Spawn)
    if GetTempVariable(NPC,"OnGuard")=="true" and not IsInCombat(NPC) and GetY(Spawn) <=0 then
    FaceTarget(NPC,Spawn)
	SetTempVariable(NPC, "OnGuard", "false")    
    AddTimer(NPC,4000,"Checking",1,Spawn)
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

function respawn(NPC)
	spawn(NPC)
end




function waypoints(NPC)
    if GetSpawnLocationID(NPC)==133781204 then
	MovementLoopAddLocation(NPC, -5.06, -0.24, -10.23, 2, 5)
	MovementLoopAddLocation(NPC, -3.49, -0.24, -11.35, 2, 0)
	MovementLoopAddLocation(NPC, -6.24, -0.24, -9.04, 2, 0)
	MovementLoopAddLocation(NPC, -7.12, -0.24, -8.16, 2, 0)
	MovementLoopAddLocation(NPC, -10.14, -0.24, -9.51, 2, 0)
	MovementLoopAddLocation(NPC, -15.12, -0.24, -13.31, 2, 0)
	MovementLoopAddLocation(NPC, -22.86, -0.24, -18.79, 2, 0)
	MovementLoopAddLocation(NPC, -26.16, -0.24, -23.02, 2, 5)
	MovementLoopAddLocation(NPC, -26.16, -0.24, -23.02, 2, 0)
	MovementLoopAddLocation(NPC, -24.21, -0.24, -20.26, 2, 0)
	MovementLoopAddLocation(NPC, -14.36, -0.24, -11.92, 2, 0)
	MovementLoopAddLocation(NPC, -10.78, -0.24, -9.64, 2, 0)
	MovementLoopAddLocation(NPC, -7.39, -0.24, -8.42, 2, 0)
    elseif GetSpawnLocationID(NPC)==133781205 then
	MovementLoopAddLocation(NPC, -10.37, -0.24, -3.42, 2, 5)
	MovementLoopAddLocation(NPC, -10.63, -0.24, -2.49, 2, 0)
	MovementLoopAddLocation(NPC, -10.83, -0.24, -4.8, 2, 0)
	MovementLoopAddLocation(NPC, -10.54, -0.24, -6.24, 2, 0)
	MovementLoopAddLocation(NPC, -12.06, -0.24, -8.13, 2, 0)
	MovementLoopAddLocation(NPC, -16.51, -0.24, -12.03, 2, 0)
	MovementLoopAddLocation(NPC, -18.91, -0.24, -13.85, 2, 0)
	MovementLoopAddLocation(NPC, -20.33, -0.24, -13.45, 2, 5)
	MovementLoopAddLocation(NPC, -20.33, -0.24, -13.45, 2, 0)
	MovementLoopAddLocation(NPC, -20.66, -0.24, -16.74, 2, 0)
	MovementLoopAddLocation(NPC, -24.44, -0.24, -19.53, 2, 0)
	MovementLoopAddLocation(NPC, -25.51, -0.24, -22.94, 2, 5)
	MovementLoopAddLocation(NPC, -25.51, -0.24, -22.94, 2, 0)
	MovementLoopAddLocation(NPC, -21.56, -0.24, -17.22, 2, 0)
	MovementLoopAddLocation(NPC, -19.4, -0.24, -14.51, 2, 0)
	MovementLoopAddLocation(NPC, -12.66, -0.24, -8.94, 2, 0)
end
end
