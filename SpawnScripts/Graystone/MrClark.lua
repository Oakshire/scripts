--[[
    Script Name    : SpawnScripts/Graystone/MrClark.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.07 12:03:36
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    choice = math.random(1,3)
    if choice == 1 then
    PlayFlavor(NPC, "", "", "attack", 0, 0, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "", "cast_drake_fire_breath", 0, 0, Spawn) 
    AddTimer(NPC,250,"Stop",Spawn)
    else
    PlayFlavor(NPC, "", "", "", 0, 0, Spawn) 
    end
end   

	function Stop(NPC,Spawn)
    PlayFlavor(NPC, "", "", "kill_cast_drake_fire_breath", 0, 0, Spawn) 
end

function respawn(NPC)
	spawn(NPC)
end