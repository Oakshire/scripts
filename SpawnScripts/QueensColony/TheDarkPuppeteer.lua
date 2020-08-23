--[[
    Script Name    : SpawnScripts/QueensColony/TheDarkPuppeteer.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.22 05:08:51
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
 
	EmoteLoop(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end



function EmoteLoop (NPC)
        local choice = math.random(1,2)
        local timer = math.random(2500,3500)
  
        if choice == 1 then
                PlayAnimation(NPC, 10956)
                AddTimer(NPC, timer, "EmoteLoop")
        else
                PlayAnimation(NPC, 10961)
                AddTimer(NPC, timer, "EmoteLoop")
        end
end
