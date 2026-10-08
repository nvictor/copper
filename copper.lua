--

t=0

function TIC()
 cls(0)
 rect(0, 44, 240, 48, 1)
 t=t+1
end

function SCN(y)
 if y>=44 and y<92 then
  g=math.floor((math.sin(y*.25+t*.08)+1)*127.5)
  poke(0x3fc0+3,g)
  poke(0x3fc1+3,math.floor(g*.35))
  poke(0x3fc2+3,math.floor(g*.05))
 end
end
