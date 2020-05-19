--[[
	Script Name	: Spells/Commoner/BetaGriffon.lua
	Script Author	: John Adams
	Script Date	: 2010.03.31 05:03:52
	Script Notes	: 
			:
--]]

function cast(Caster, Target, MountID, MountRed, MountGreen, MountBlue, SaddleRed, SaddleGreen, SaddleBlue, MountSpeed)

   if MountID ~= nil then
      SetMount(Caster, MountID)
      if MountRed ~= nil then
         SetMountColor(Caster, MountRed, MountGreen, MountBlue, SaddleRed, SaddleGreen, SaddleBlue)
      end
      if MountSpeed ~= nil then
         SetSpeed(Caster, MountSpeed)
      end
   end -- missing me
end

function remove(Caster, Target)
	SetMount(Caster, 0)
	SetSpeed(Caster, 0)
end
