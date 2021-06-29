--[[
        Script Name     : SpawnScripts/QueensColony/aqeynosguardsman430688.lua
	Script Purpose	: a Qeynos Guardsman <Guard>
	Script Author	: John Adams - updated by Rylec (updated movement - old is saved)
	Script Date	: 2008.11.26
	Script Notes	: Patrol leader. Script will set model type to allow all relevant races 
--]]

function spawn(NPC)
        setmodel(NPC)
	waypoints(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end


function setmodel(NPC)
        local RandomModel = math.random (1,4) 
        local shouttime = math.random (90000,270000)     

                if RandomModel == 1 then
                        SpawnSet(NPC, "model_type", "82") 
                	AddTimer(NPC, shouttime, "kerra")
                elseif RandomModel == 2 then
                        SpawnSet(NPC, "model_type", "110") 
                	AddTimer(NPC, shouttime, "dwarf")
                elseif RandomModel == 3 then
                        SpawnSet(NPC, "model_type", "112") 
                	AddTimer(NPC, shouttime, "barbarian")
                elseif RandomModel == 4 then
                        SpawnSet(NPC, "model_type", "134") 
                	AddTimer(NPC, shouttime, "human")
                end
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -21.39, -5.38, 216.76, 2, 2)
	MovementLoopAddLocation(NPC, -9.77, -5.22, 190.18, 2, 0)
	MovementLoopAddLocation(NPC, -27.77, -5.11, 172.5, 2, 0)
	MovementLoopAddLocation(NPC, -48.04, -5.03, 158.19, 2, 0)
	MovementLoopAddLocation(NPC, -56.81, -4.99, 134.91, 2, 0)
	MovementLoopAddLocation(NPC, -53.47, -5.49, 110.98, 2, 0)
	MovementLoopAddLocation(NPC, -34.49, -5.07, 101.44, 2, 0)
	MovementLoopAddLocation(NPC, -48.36, -5.13, 108.76, 2, 0)
	MovementLoopAddLocation(NPC, -52.25, -5.14, 112.06, 2, 0)
	MovementLoopAddLocation(NPC, -54.23, -5.47, 112.1, 2, 0)
	MovementLoopAddLocation(NPC, -57.14, -4.99, 133.36, 2, 0)
	MovementLoopAddLocation(NPC, -47.15, -5.03, 158.1, 2, 0)
	MovementLoopAddLocation(NPC, -25.05, -5.12, 175.27, 2, 0)
	MovementLoopAddLocation(NPC, -10.53, -5.22, 190.4, 2, 0)
	MovementLoopAddLocation(NPC, 15.99, -5.27, 169.85, 2, 0)
	MovementLoopAddLocation(NPC, 33.96, -6.05, 167.83, 2, 0)
	MovementLoopAddLocation(NPC, 46.71, -3.38, 167.21, 2, 0)
	MovementLoopAddLocation(NPC, 16.43, -5.27, 169.85, 2, 0)
	MovementLoopAddLocation(NPC, -10.74, -5.21, 190.95, 2, 0)
end

function kerra(NPC)
        math.randomseed(os.time())
        local choice = math.random (1,3)

        if choice == 1 then
                Say(NPC, "Wraaaaa!")
        elseif choice == 2 then
                Say(NPC, "For Qeynos!")
        elseif choice == 3 then
                Say(NPC, "Look at Luclin! Shar Vahl...")
                Emote(NPC, "groans.") 
        end

        local time = math.random (90000,2700000)       
	AddTimer(NPC, time, "kerra")	
end

function dwarf(NPC)
        math.randomseed(os.time())
        local choice = math.random (1,3)

        if choice == 1 then
                Say(NPC, "When I am off duty that rock is mine!")
                Emote(NPC, "points at a shiny stone.")                
        elseif choice == 2 then
                Say(NPC, "For the strength of Kaladim!")
        elseif choice == 3 then
                Say(NPC, "Onward boys and keep in line!")
        end

        local time = math.random (90000,2700000)       
	AddTimer(NPC, time, "dwarf")	
end

function barbarian(NPC)
        math.randomseed(os.time())
        local choice = math.random (1,3)

        if choice == 1 then
                Say(NPC, "For the love of Halas, I could use a stout!")
        elseif choice == 2 then
                Say(NPC, "All clear here!")
        elseif choice == 3 then
                Say(NPC, "I long to return to Qeynos.")
        end

        local time = math.random (90000,2700000)       
	AddTimer(NPC, time, "barbarian")	
end

function human(NPC)
        math.randomseed(os.time())
        local choice = math.random (1,3)

        if choice == 1 then
                Say(NPC, "I'll bet you an ale that I spot the next intruder first.")
                Emote(NPC, "smack his fist into his palm.")                
        elseif choice == 2 then
                Say(NPC, "In honor of the Queen.")
                Emote(NPC, "salutes.")  
        elseif choice == 3 then
                Say(NPC, "Keep your eyes peeled boys!")
        end

        local time = math.random (90000,2700000)       
	AddTimer(NPC, time, "human")	
end

--[[	--Syntax is NPC, x, y, z, speed, delay (in seconds) (John Adams old path, might be old path so keeping it for now)
	MovementLoopAddLocation(NPC, 21.09, -5.30, 161.75, 2, 0)
	MovementLoopAddLocation(NPC, 21.18, -5.28, 144.12, 2, 0)
	MovementLoopAddLocation(NPC, 16.59, -5.27, 133.36, 2, 0)
	MovementLoopAddLocation(NPC, 10.50, -5.24, 114.47, 2, 0)
	MovementLoopAddLocation(NPC, 6.95, -5.22, 103.47, 2, 0)
	MovementLoopAddLocation(NPC, -25.22, -5.10, 100.19, 2, 0)
	MovementLoopAddLocation(NPC, -52.38, -5.79, 108.30, 2, 0)
	MovementLoopAddLocation(NPC, -55.46, -4.91, 131.16, 2, 0)
	MovementLoopAddLocation(NPC, -46.75, -5.04, 157.32, 2, 0)
	MovementLoopAddLocation(NPC, -23.70, -5.12, 176.13, 2, 0)
	MovementLoopAddLocation(NPC, -9.30, -5.20, 186.68, 2, 0)
	MovementLoopAddLocation(NPC, -21.30, -5.41, 217.11, 2, 0)
	MovementLoopAddLocation(NPC, -7.47, -5.21, 188.38, 2, 0)
	MovementLoopAddLocation(NPC, 1.16, -5.22, 181.35, 2, 0)
	MovementLoopAddLocation(NPC, 12.73, -5.26, 172.09, 2, 0)
--]]

