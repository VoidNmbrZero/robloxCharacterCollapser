local lp = game:FindService("Players").LocalPlayer
local char = lp.Character

while task.wait(0.025) do
	repeat
		char.Torso.Orientation += Vector3.new(0, 2, 0)
		for _, v in char:GetDescendants() do
			if v:IsA("BasePart") then v.Reflectance = 0.1 end
			if v:IsA("SpecialMesh") or v:IsA("MeshPart") then v:Destroy() end
		end
	until not char:FindFirstChild("Torso") or char:FindFirstChild("Head")
end
