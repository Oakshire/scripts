--[[
	Script Name	: SpawnScripts/Starcrest/AngeliaClayton.lua
	Script Purpose	: Angelia Clayton 
	Script Author	: Dorbin
	Script Date	: 06.29.2022
	Script Notes	: 
--]]
local HailCheck = false

function spawn(NPC)
AddTimer(NPC, 5000, "EmoteLoop")
end


function hailed(NPC, Spawn)
    HailCheck = true
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Hello to you!  If you enjoy my dancing please be sure to leave a tip on the counter!", "", 1689589577, 4560189, Spawn)
    AddTimer(NPC,26000,"HailReset")
end

function HailReset(NPC)
    HailCheck = false
end


function EmoteLoop(NPC)
    if HailCheck == true then
    AddTimer(NPC,26100,"EmoteLoop")
    else
    local emoteChoice = MakeRandomInt(1,4)

    if emoteChoice == 1 then
-- flourish
        PlayAnimation(NPC, 11557)
        AddTimer(NPC, MakeRandomInt(21000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- kiss
        PlayAnimation(NPC, 11762)
        AddTimer(NPC, MakeRandomInt(5000,8000), "EmoteLoop")	
    
    elseif emoteChoice == 3 then
-- dance
        PlayAnimation(NPC, 11298)
        AddTimer(NPC, MakeRandomInt(10000,12000), "EmoteLoop")	
    
    elseif emoteChoice == 4 then
-- full curtsey
        PlayAnimation(NPC, 11633)
        AddTimer(NPC, MakeRandomInt(7000,8000), "EmoteLoop")	
     end
end
end