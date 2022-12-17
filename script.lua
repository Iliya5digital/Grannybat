while true do
	
	task.wait()
	
	function cool(pos)
		
		local lowest = 30
		local playerthatisnear

		for _, v in pairs(game:GetService("Players"):GetPlayers()) do
			
			if v and v.Character then
				
				local distance = v:DistanceFromCharacter(pos)
				
				if distance < lowest then
					
					lowest = distance
					playerthatisnear = v
					
				end
				
			end
			
		end
		
		--return playerthatisnear
		
		if playerthatisnear then
			
			print(playerthatisnear)
			
		end
		
	end
	
	cool(script.Parent.Position)
	
end