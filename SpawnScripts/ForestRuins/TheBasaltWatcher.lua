--[[
    Script Name    : SpawnScripts/ForestRuins/TheBasaltWatcher.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.23 04:02:42
    Script Purpose : The Basalt Watcher wakeup script (THIS IS CLASSIC/OLD SCHOOL Version of activation) 
    Version Notes: This script is the older/most dynamic setup. Updated/Live version = Always targetable but unattackable until awakened. Activates occasionally at 6:30am pre-dawn to attack Blackfurl pirates. Goes down the stairs, across the front gate, up the opposite stairs and resets to inactive. Updated is NOT KOS to players. 
                   : 
--]]


function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end


function spawn(NPC)
	SetPlayerProximityFunction(NPC, 15, "InRange", "LeaveRange")	    
     AddTimer(NPC,math.random(1260000, 2160000),"wakeup")            --random activation between 12 (~21min) and 24 (37min) Norrath/in-game hours
    end
    
function InRange(NCP,Spawn)                                          --(Doesn't trigger) VERY small chance to activate when players are near
if math.random(1, 100) == 1 then
      wakeup(NPC)
  end
end

function wakeup(NPC)
		local players = GetPlayersInZone(GetZone(NPC))              --zone callout and activation
		for index, player in pairs(players) do
		SendPopUpMessage(player, "Grinding stone can be heard as something ancient stirs in the ruins.", 255, 255, 0)
		SendMessage(player, "Grinding stone can be heard as something ancient stirs in the ruins.")
    end
    SpawnSet(NPC, "show_name", "1")
    SpawnSet(NPC, "targetable", "1")    
    SpawnSet(NPC, "attackable", "1")
    SpawnSet(NPC, "show_level", "1")
    SpawnSet(NPC, "faction", "357")
    AddTimer(NPC,900000,"sleep")                                   --sleep timer if not attacked after 15 min
    
end

function sleep(NPC)        --return to inactive state
    SpawnSet(NPC, "show_name", "0")
    SpawnSet(NPC, "targetable", "0")
    SpawnSet(NPC, "attackable", "0")
    SpawnSet(NPC, "show_level", "0")
    SpawnSet(NPC, "faction", "0")
    AddTimer(NPC,math.random(1260000, 2160000),"wakeup")            --RE-start of 'wakeup' timer, random activation between 12 (21min) and 24 (37min) Norrath/in-game hours
end

function aggro(NPC, Spawn)
    if math.random(1,100) >=40 then
    	if HasLanguage(Spawn,27) then
    	local choice = math.random(1, 2)
    		if choice == 1  then
        PlayFlavor(NPC, "", "I will destroy you!", "", 892689932, 1216702018, Spawn, 27)
                else
        PlayFlavor(NPC, "", "Kill without mercy!", "", 704507717, 740925398, Spawn, 27)
          end
     elseif not HasLanguage(Spawn,27) then
        local choice = math.random(1, 2)
    	if choice == 1  then
        PlayFlavor(NPC, "voiceover/english/elemental_earth_base_1/ft/elemental/elemental_earth_base_1_1_garbled_7c1e7a03.mp3", "I will destroy these intruders!", "", 2956610216, 1562072254, Spawn, 27)
        else
         PlayFlavor(NPC, "voiceover/english/elemental_earth_base_1/ft/elemental/elemental_earth_base_1_1_garbled_e0fead4d.mp3", "I will destroy you!", "", 892689932, 1216702018, Spawn, 27)
        end
     
        end
 end
end

 function death(NPC, Spawn)
         	if HasLanguage(Spawn,27) then
    		if choice == 1  then
          PlayFlavor(NPC, "", "I have failed!", "", 0, 0, Spawn, 27)
          end
     elseif not HasLanguage(Spawn,27) then
                   PlayFlavor(NPC, "voiceover/english/elemental_earth_base_1/ft/elemental/elemental_earth_base_1_1_garbled_fc50550a.mp3", "I have failed!", "", 704507717, 740925398, Spawn, 27)
        end
 end
