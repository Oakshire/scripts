--[[
    Script Name    : SpawnScripts/Cache/aGuardDog.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.05 04:12:01
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
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
    choice = MakeRandomInt(1,2)
    if choice ==1 then
    SendMessage(Spawn,"The dog lets out a low growl.")
    elseif choice ==2 then
    SendMessage(Spawn,"The dog's ears twitch.")
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