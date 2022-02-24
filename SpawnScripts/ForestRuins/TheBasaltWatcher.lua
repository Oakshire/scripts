--[[
    Script Name    : SpawnScripts/ForestRuins/TheBasaltWatcher.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.23 04:02:42
    Script Purpose : The Basalt Watcher wakeup script
                   : 
--]]


function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end


function spawn(NPC)
	SetPlayerProximityFunction(NPC, 24, "InRange", "LeaveRange")	    
    AddTimer(NPC,math.random(1260000, 2160000),"wakeup")        --random spawn between 12 and 24 Norrath/in-game hours
    end
    
function InRange(NCP,Spawn)                 --VERY small chance to activate when players are near
      if math.random(1, 200) == 1 then
      wakeup(NPC)
      else
     end
end

function wakeup(NPC)
    if math.random(1, 3) == 1 then                                  --failure mechanism to activate
        AddTimer(NPC,math.random(1260000, 2160000),"wakeup")        --restart of countdown
         else
		local players = GetPlayersInZone(GetZone(NPC))              --zone callout and activation
		for index, player in pairs(players) do
		SendPopUpMessage(player, "Grinding of stone can be heard as something ancient stirs in the ruins.", 255, 255, 0)
		SendMessage(player, "Grinding of stone can be heard as something ancient stirs in the ruins.")
	    end    
    SpawnSet(NPC, "attackable", "1")
    SpawnSet(NPC, "show_level", "1")
    SpawnSet(NPC, "faction", "1")
    AddTimer(NPC,1800000,"sleep")       --sleep timer if not attacked after 30 min
    end
end

function sleep(NPC)                     --return to inactive state
    SpawnSet(NPC, "attackable", "0")
    SpawnSet(NPC, "show_level", "0")
    SpawnSet(NPC, "faction", "0")
    AddTimer(NPC,math.random(1260000, 2160000),"wakeup")        --random spawn between 12 and 24 Norrath/in-game hours
end


