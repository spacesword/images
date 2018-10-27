def drawPixel(x, y, color)
	printf("\e[#{x};#{y}H\e[#{color}m \e[0m")
end

def drawStroke(x, y, length, color: "107", ver_hor: 0)
	if ver_hor.eql?0
		for i in (0..length-1)
			drawPixel(x, y + i, color)
		end
	elsif ver_hor.eql?1
		for i in (0..length-1)
			drawPixel(x+i, y, color)
		end
	end
end

printf("\e[2J")
drawStroke(1, 1, 10)
drawStroke(1, 1, 4, ver_hor: 1)
drawStroke(4, 1, 10, ver_hor: 0)
drawStroke(1, 10, 4, ver_hor: 1)