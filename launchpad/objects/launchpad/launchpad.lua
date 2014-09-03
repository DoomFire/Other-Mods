function init(args)
	entity.setInteractive(true)
	self.jump=false
	self.hop=false
end
function main()

	-- save closest player
	self.closestPlayer = world.playerQuery( entity.position(), 100)
	local p = entity.toAbsolutePosition({ -1.3, 1 })

			world.logInfo("****************************************************")
			world.logInfo("test")
			
	if #self.closestPlayer>0 then
	
		self.PlayeronGround= world.entityType(self.closestPlayer[1]) 
		
			world.logInfo("playeronGround= ".. tostring(self.PlayeronGround))
			if not self.PlayeronGround then
			entity.setForceRegion({ p[1], p[2], p[1] + 40, p[2]+80 }, { 50,50})	
		end
	end
		world.logInfo("****************************************************")
	
	
	if self.jump then
		self.jump=false
		
		self.hop=true
		
		-- point that has to be at the ?bottom left? of the object... used to set force region
	--	local p = entity.toAbsolutePosition({ -1.3, 1 })
	
	
		-- Puts some stuff in the starbound log about positions (mostly to find problems) 
		--These positions are where the force is aplied
		world.logInfo("x1= "..tostring(p[1]))
		world.logInfo("y1= "..tostring(p[2]))
		world.logInfo("x1= "..tostring(p[1])+40)
		world.logInfo("y1= "..tostring(p[2])+80)

		-- Force to be used for jumping (what direction) {horizontalPower,verticalPower}
		local JumpForce = {0,4000} 
		
		-- Aplies force at the given location  setForceRegion( {4 points to determine rectangle area},{force})
			-- test to lift the player up
		entity.setForceRegion({ p[1], p[2], p[1] + 40, p[2]+80 }, { 0,100})	
			-- actual launch
		entity.setForceRegion({ p[1], p[2], p[1] + 40, p[2]+80 }, { JumpForce[1],JumpForce[2]})
	end
	
end



function onInboundNodeChange(args)
	onInteraction(args)
end

function onInteraction(args)
	
	self.jump=true

	world.logInfo(tostring(self.closestPlayer))

	-- only try to set self.playerPos if there  is a player close by.
	if #self.closestPlayer>0 then

		-- Save the current position of the player
		self.playerPos=world.entityPosition(self.closestPlayer[1])
	
		-- piontles info to show in starbound.log
		world.logInfo("closest Player [1]= "..tostring(self.closestPlayer[1]))
		world.logInfo(tostring(self.playerPos[1]))
		world.logInfo(tostring(self.playerPos[2]))

	end

	-- seperate the info of each interaction
	world.logInfo("--------------------------------------------------")


end